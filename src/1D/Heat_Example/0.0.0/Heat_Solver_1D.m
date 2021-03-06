function [solution,error] = Heat_Solver_1D(left, right, h, initial, final, dt, theta,basis_type_trial,basis_type_test,der_trial,der_test,Gauss_type)
% 一维热方程求解器
% 主要来求解如下形式的方程
% $u_t-\nabla \cdot c(x) \nabla u(x) = f(x),a\le x\le b$
%$u(a)=g_a$,
%$u'(b)+q_bu(b)=p_b$
% left = 0;                          %区间左端点
% right = 1;                         %区间右端点
% Gauss_type=4;                      %高斯积分的类型，选择几点的高斯积分
% basis_type_trial = 102;            %试探函数基函数类型
% basis_type_test = 102;             %测试函数基函数类型
% der_trial = 1;                     %试探函数导数阶
% der_test = 1;                      %测试函数的导数阶

N = (right - left)/h;                  %区间段数
Mt = (final - initial)/dt;
basis_type = basis_type_trial;                  %基函数类型
[P,T] = generate_PT_1D(left, right, h,basis_type);                         %P矩阵存储节点编号及坐标，T矩阵存储每个单元的节点号，按一定的规则排序
[Pb,Tb] = generate_PbTb_1D(left, right, h,basis_type);                     %Pb矩阵存储有限元节点及坐标，Tb矩阵存储每个单元的有限元节点号，按一定的规则排序
boundarynodes = generate_boundarynodes(N, basis_type);                     %生成边界点，存储对应的边界点类型以及边界点的有限元编号

%------------------------------组装器--------------------------------------%
%矩阵组装器
matrix_size = [size(Pb,2), size(Pb,2)];                                    %刚度矩阵的大小
M = assemble_matrix_volume_in_1D('coefficient_fun_c1',matrix_size,P,T,Pb,Tb,basis_type_trial,0,basis_type_test,0,Gauss_type, 0);
x_now = generate_initial_vector('initial_fun',Pb, initial);
vector_size = size(Pb,2);                                                  %右端向量的大小
for i = 0: 1: Mt-1
    t = initial+(i+1)*dt;
    %矩阵组装器
    A_now = assemble_matrix_volume_in_1D('coefficient_fun_c2',matrix_size,P,T,Pb,Tb,basis_type_trial,1,basis_type_test,1,Gauss_type, t-dt);
    A_next = assemble_matrix_volume_in_1D('coefficient_fun_c2',matrix_size,P,T,Pb,Tb,basis_type_trial,1,basis_type_test,1,Gauss_type, t);
    %向量组装器
    b_now = assemble_vector_1D_volume_in_1D('righthand_fun_f',P,T,Pb,Tb,vector_size,basis_type_test,Gauss_type,t-dt);
    b_next = assemble_vector_1D_volume_in_1D('righthand_fun_f',P,T,Pb,Tb,vector_size,basis_type_test,Gauss_type,t);
    %----------------------------处理边界条件----------------------------------%
    %边界条件处理
%     [ A_now, b_now ] = treat_Robin_boundary( A, b, boundarynodes,'coefficient_fun_c','Robin_fun_pb','Robin_fun_qb',Pb);
%     [ A_now, b_now ] = treat_Neumann_boundary( A, b, boundarynodes,'coefficient_fun_c','Neumann_fun_rb',Pb);%处理Neumann边界条件    
%      [ A_now, b_now ] = treat_Dirichlet_boundary(A_now, b_now, boundarynodes,'Dirichlet_fun_g',Pb,t);           %处理Dirichlet边界
%     [ A_next, b_next ] = treat_Robin_boundary( A, b, boundarynodes,'coefficient_fun_c','Robin_fun_pb','Robin_fun_qb',Pb);
%     [ A_next, b_next ] = treat_Neumann_boundary( A, b, boundarynodes,'coefficient_fun_c','Neumann_fun_rb',Pb);%处理Neumann边界条件    
%      [ A_next, b_next ] = treat_Dirichlet_boundary(A_next, b_next, boundarynodes,'Dirichlet_fun_g',Pb,t);           %处理Dirichlet边界
%     %----------------------------解线性方程组----------------------------------%
    A_tilde = M/dt + theta*A_next;
    b_tilde = theta*b_next+(1-theta)*b_now+M/dt*x_now-(1-theta)*A_now*x_now;
    [A_tilde, b_tilde ] = treat_Dirichlet_boundary(A_tilde, b_tilde, boundarynodes,'Dirichlet_fun_g',Pb,t);           %处理Dirichlet边界
    x_next = A_tilde\b_tilde;
    x_now = x_next;
end
solution  = x_next;
%---------------------------计算误差---------------------------------------%
%误差计算
%error = compute_error_on_nodes('exact',Pb,solution);
error = compute_inf_error('exact', solution,P,T,Tb, basis_type, 0, final);                       %计算无穷范数误差
inf_error = max(error);
L2_error = compute_Hs_error('exact', solution,P,T, Tb, basis_type, 0,Gauss_type,final);         %计算L2范数误差
H1_semi_error = compute_Hs_error('exact1', solution,P,T, Tb, basis_type, 1,Gauss_type,final);   %计算H1半范误差
fprintf('%7.4e  %7.4e  %7.4e\n',inf_error,L2_error,H1_semi_error);
end