# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b/build

# Include any dependencies generated for this target.
include CMakeFiles/main2b.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/main2b.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main2b.dir/flags.make

CMakeFiles/main2b.dir/main2b.cc.o: CMakeFiles/main2b.dir/flags.make
CMakeFiles/main2b.dir/main2b.cc.o: ../main2b.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main2b.dir/main2b.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/main2b.dir/main2b.cc.o -c /mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b/main2b.cc

CMakeFiles/main2b.dir/main2b.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main2b.dir/main2b.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b/main2b.cc > CMakeFiles/main2b.dir/main2b.cc.i

CMakeFiles/main2b.dir/main2b.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main2b.dir/main2b.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b/main2b.cc -o CMakeFiles/main2b.dir/main2b.cc.s

CMakeFiles/main2b.dir/main2b.cc.o.requires:

.PHONY : CMakeFiles/main2b.dir/main2b.cc.o.requires

CMakeFiles/main2b.dir/main2b.cc.o.provides: CMakeFiles/main2b.dir/main2b.cc.o.requires
	$(MAKE) -f CMakeFiles/main2b.dir/build.make CMakeFiles/main2b.dir/main2b.cc.o.provides.build
.PHONY : CMakeFiles/main2b.dir/main2b.cc.o.provides

CMakeFiles/main2b.dir/main2b.cc.o.provides.build: CMakeFiles/main2b.dir/main2b.cc.o


# Object files for target main2b
main2b_OBJECTS = \
"CMakeFiles/main2b.dir/main2b.cc.o"

# External object files for target main2b
main2b_EXTERNAL_OBJECTS =

main2b: CMakeFiles/main2b.dir/main2b.cc.o
main2b: CMakeFiles/main2b.dir/build.make
main2b: /usr/lib/x86_64-linux-gnu/libdeal.ii.g.so.8.5.1
main2b: /usr/lib/x86_64-linux-gnu/libbz2.so
main2b: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_usempif08.so
main2b: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_usempi_ignore_tkr.so
main2b: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_mpifh.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_pike-blackbox.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_trilinoscouplings.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_piro.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_rol.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stokhos_muelu.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stokhos_ifpack2.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stokhos_amesos2.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stokhos_tpetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stokhos_sacado.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stokhos.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_rythmos.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_muelu-adapters.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_muelu-interface.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_muelu.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_moertel.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_locathyra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_locaepetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_localapack.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_loca.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_noxepetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_noxlapack.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_nox.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_phalanx.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_intrepid.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_teko.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stratimikos.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stratimikosbelos.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stratimikosaztecoo.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stratimikosamesos.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stratimikosml.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_stratimikosifpack.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_ifpack2-adapters.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_ifpack2.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_anasazitpetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_ModeLaplace.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_anasaziepetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_anasazi.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_komplex.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_amesos2.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_shylu.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_belostpetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_belosepetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_belos.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_ml.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_ifpack.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_zoltan2.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_pamgen_extras.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_pamgen.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_amesos.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_galeri-xpetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_galeri-epetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_aztecoo.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_dpliris.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_isorropia.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_optipack.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_xpetra-sup.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_xpetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_thyratpetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_thyraepetraext.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_thyraepetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_thyracore.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_epetraext.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_trilinosss.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_tpetraext.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_tpetrainout.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_tpetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_kokkostsqr.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_tpetraclassiclinalg.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_tpetraclassicnodeapi.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_tpetraclassic.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_triutils.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_globipack.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_shards.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_zoltan.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_epetra.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_sacado.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_rtop.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_kokkoskernels.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_teuchoskokkoscomm.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_teuchoskokkoscompat.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_teuchosremainder.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_teuchosnumerics.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_teuchoscomm.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_teuchosparameterlist.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_teuchoscore.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_kokkosalgorithms.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_kokkoscontainers.so
main2b: /usr/lib/x86_64-linux-gnu/libtrilinos_kokkoscore.so
main2b: /usr/lib/x86_64-linux-gnu/libsmumps.so
main2b: /usr/lib/x86_64-linux-gnu/libdmumps.so
main2b: /usr/lib/x86_64-linux-gnu/libcmumps.so
main2b: /usr/lib/x86_64-linux-gnu/libzmumps.so
main2b: /usr/lib/x86_64-linux-gnu/libpord.so
main2b: /usr/lib/x86_64-linux-gnu/libmumps_common.so
main2b: /usr/lib/x86_64-linux-gnu/hdf5/openmpi/libhdf5.so
main2b: /usr/lib/x86_64-linux-gnu/libtbb.so
main2b: /usr/lib/x86_64-linux-gnu/libz.so
main2b: /usr/lib/x86_64-linux-gnu/libptscotch.so
main2b: /usr/lib/x86_64-linux-gnu/libptscotcherr.so
main2b: /usr/lib/x86_64-linux-gnu/libscotch.so
main2b: /usr/lib/x86_64-linux-gnu/libscotcherr.so
main2b: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
main2b: /usr/lib/x86_64-linux-gnu/libumfpack.so
main2b: /usr/lib/x86_64-linux-gnu/libcholmod.so
main2b: /usr/lib/x86_64-linux-gnu/libccolamd.so
main2b: /usr/lib/x86_64-linux-gnu/libcolamd.so
main2b: /usr/lib/x86_64-linux-gnu/libcamd.so
main2b: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
main2b: /usr/lib/x86_64-linux-gnu/libamd.so
main2b: /usr/lib/x86_64-linux-gnu/libparpack.so
main2b: /usr/lib/x86_64-linux-gnu/libarpack.so
main2b: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so
main2b: /usr/lib/x86_64-linux-gnu/libboost_serialization.so
main2b: /usr/lib/x86_64-linux-gnu/libboost_system.so
main2b: /usr/lib/x86_64-linux-gnu/libboost_thread.so
main2b: /usr/lib/x86_64-linux-gnu/libboost_regex.so
main2b: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
main2b: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
main2b: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
main2b: /usr/lib/x86_64-linux-gnu/libgsl.so
main2b: /usr/lib/x86_64-linux-gnu/libgslcblas.so
main2b: /usr/lib/x86_64-linux-gnu/hdf5/openmpi/lib/lib/libhdf5_hl.so
main2b: /usr/lib/x86_64-linux-gnu/hdf5/openmpi/lib/lib/libhdf5.so
main2b: /usr/lib/x86_64-linux-gnu/libmuparser.so
main2b: /usr/lib/x86_64-linux-gnu/libnetcdf_c++.so
main2b: /usr/lib/x86_64-linux-gnu/libnetcdf.so
main2b: /usr/lib/x86_64-linux-gnu/libTKBO.so
main2b: /usr/lib/x86_64-linux-gnu/libTKBool.so
main2b: /usr/lib/x86_64-linux-gnu/libTKBRep.so
main2b: /usr/lib/x86_64-linux-gnu/libTKernel.so
main2b: /usr/lib/x86_64-linux-gnu/libTKFeat.so
main2b: /usr/lib/x86_64-linux-gnu/libTKFillet.so
main2b: /usr/lib/x86_64-linux-gnu/libTKG2d.so
main2b: /usr/lib/x86_64-linux-gnu/libTKG3d.so
main2b: /usr/lib/x86_64-linux-gnu/libTKGeomAlgo.so
main2b: /usr/lib/x86_64-linux-gnu/libTKGeomBase.so
main2b: /usr/lib/x86_64-linux-gnu/libTKHLR.so
main2b: /usr/lib/x86_64-linux-gnu/libTKIGES.so
main2b: /usr/lib/x86_64-linux-gnu/libTKMath.so
main2b: /usr/lib/x86_64-linux-gnu/libTKMesh.so
main2b: /usr/lib/x86_64-linux-gnu/libTKOffset.so
main2b: /usr/lib/x86_64-linux-gnu/libTKPrim.so
main2b: /usr/lib/x86_64-linux-gnu/libTKShHealing.so
main2b: /usr/lib/x86_64-linux-gnu/libTKSTEP.so
main2b: /usr/lib/x86_64-linux-gnu/libTKSTEPAttr.so
main2b: /usr/lib/x86_64-linux-gnu/libTKSTEPBase.so
main2b: /usr/lib/x86_64-linux-gnu/libTKSTEP209.so
main2b: /usr/lib/x86_64-linux-gnu/libTKSTL.so
main2b: /usr/lib/x86_64-linux-gnu/libTKTopAlgo.so
main2b: /usr/lib/x86_64-linux-gnu/libTKXSBase.so
main2b: /usr/lib/x86_64-linux-gnu/libp4est.so
main2b: /usr/lib/x86_64-linux-gnu/libsc.so
main2b: /usr/lib/x86_64-linux-gnu/liblapack.so
main2b: /usr/lib/x86_64-linux-gnu/libblas.so
main2b: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
main2b: /usr/lib/x86_64-linux-gnu/libslepc.so
main2b: /usr/lib/x86_64-linux-gnu/libpetsc.so
main2b: CMakeFiles/main2b.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main2b"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main2b.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main2b.dir/build: main2b

.PHONY : CMakeFiles/main2b.dir/build

CMakeFiles/main2b.dir/requires: CMakeFiles/main2b.dir/main2b.cc.o.requires

.PHONY : CMakeFiles/main2b.dir/requires

CMakeFiles/main2b.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main2b.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main2b.dir/clean

CMakeFiles/main2b.dir/depend:
	cd /mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b /mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b /mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b/build /mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b/build /mnt/c/Users/shenyuan/Desktop/CA2_template/CA2b/build/CMakeFiles/main2b.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main2b.dir/depend
