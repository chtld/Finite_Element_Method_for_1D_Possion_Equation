function [result] = heat_solver_2D(pde, mesh, FE)
% 二维possion方程求解器
interval_x=[mesh.left mesh.right];
interval_y=[mesh.bottom mesh.top];
timesteps = (pde.endtime - pde.initialtime) / pde.dt;
h=[mesh.hx,mesh.hy];
basis_type = FE.basis_type_trial;
Nx=(interval_x(2)-interval_x(1))/h(1);
Ny=(interval_y(2)-interval_y(1))/h(2);
[mesh.P, mesh.T] = generate_PT_2D(interval_x, interval_y, h, basis_type); %生成网格节点及编号
[FE.Pb, FE.Tb] = generate_PbTb_2D(mesh.P, mesh.T, basis_type);                               %生成有限元节点及编号
Tb = FE.Tb;
boundaryedges = generate_boundaryedges_2D_triangle(Nx,Ny);                 %生成边界边
boundarynodes = generate_boundarynodes_2D_triangle(Nx,Ny);                 %生成边界点
%-----------------------组装质量矩阵---------------------------------------%
matrix_size = [size(FE.Pb,2), size(FE.Pb,2)];
M = assemble_matrix_volume_in_2D(matrix_size, pde.coef1, mesh, FE, 0, 0, 0, 0, 0);
%-----------------------组装刚度矩阵----------------------------------------%
%组装刚度矩阵
                                    %初始化刚度矩阵
A1 = assemble_matrix_volume_in_2D(matrix_size, pde.coef2, mesh, FE, 1, 0, 1, 0, 0);
A2 = assemble_matrix_volume_in_2D(matrix_size, pde.coef2, mesh, FE, 0, 1, 0, 1, 0);
A = A1+A2;
x_old = generate_intial_vector(pde.intial, FE);
%-----------------------组装右端项量----------------------------------------%
%组装右端向量
theta = pde.theta;
dt = pde.dt;
vector_size = size(FE.Pb, 2);                                                  %初始化右端向量
for i = 0: 1: timesteps - 1
    old = pde.initialtime + i * pde.dt;
    new = pde.initialtime + (i + 1) * pde.dt;
    b_old = assemble_vector_2D_volume_in_2D(vector_size, pde, mesh, FE, 0, 0, old);
    b_new = assemble_vector_2D_volume_in_2D(vector_size, pde, mesh, FE, 0, 0, new);
    A_tilde = M /dt + theta * A;
    b_tilde = theta * b_new + (1 - theta) * b_old + M / dt * x_old - (1 - theta) * A * x_old;
    %----------------------处理边界条件-----------------------------------------%
    %处理边界条件
    %[ A, b ] = treat_Neumann_boundary( A, b, boundarynodes,'function_c','exact1',Pb);
    [A_tilde, b_tilde] = treat_Dirichlet_boundary(A_tilde, b_tilde, boundarynodes, pde. bdry.u_dirichlet, FE.Pb, new);
    %------------------------求解线性方程组-------------------------------------%
    %求解线性方程组
    x_new = A_tilde \ b_tilde;
    x_old = x_new;
end
%------------------------误差计算-------------------------------------------%
result.solution = x_new;
%error = compute_error_on_nodes('exact',Pb,solution);
P = mesh.P;
T = mesh.T;
error=compute_inf_error(pde.exact_sol.u, result.solution,P,T,Tb, basis_type, 0, 0, pde.endtime);
inf_error = max(error);
L2_error=compute_Hs_error(pde.exact_sol.u, result.solution,P,T, Tb, basis_type, 0, 0, FE.Gauss_type, pde.endtime);
H1_error1=compute_Hs_error(pde.exact_sol.u_x, result.solution,P,T, Tb, basis_type, 1, 0, FE.Gauss_type, pde.endtime);
H1_error2=compute_Hs_error(pde.exact_sol.u_y, result.solution,P,T, Tb, basis_type, 0, 1, FE.Gauss_type, pde.endtime);
H1_error=sqrt(H1_error1^2+H1_error2^2);
result.error.L_inf = inf_error;
result.errorl.L2 = L2_error;
result.error.H1 = H1_error;
end