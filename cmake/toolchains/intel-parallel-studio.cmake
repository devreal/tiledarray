#
# Generic Toolchain for Intel Parallel Studio
#
# REQUIREMENTS:
# - in PATH:
#   icc, icpc, mpiicc, and mpiicpc
# - environment variables:
#   * INTEL_DIR: the Intel compiler directory (includes MKL and TBB), e.g. /opt/intel
#   * EIGEN3_DIR or (deprecated) EIGEN_DIR: the Eigen3 directory
#   * BOOST_DIR: the Boost root directory
#

####### Compilers
include(${CMAKE_CURRENT_LIST_DIR}/_icc.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/_impi.cmake)

####### Compile flags
include(${CMAKE_CURRENT_LIST_DIR}/_std_c_flags.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/_std_cxx_flags.cmake)

####### Eigen
include(${CMAKE_CURRENT_LIST_DIR}/_eigen.cmake)

####### Boost
include(${CMAKE_CURRENT_LIST_DIR}/_boost.cmake)

####### BLAS/LAPACK Libraries
set(INTEGER4 TRUE CACHE BOOL "Set Fortran integer size to 4 bytes")
set(BUILD_SHARED_LIBS OFF CACHE BOOL "Build shared libraries")
include(${CMAKE_CURRENT_LIST_DIR}/_tbb.cmake)
include(${CMAKE_CURRENT_LIST_DIR}/_mkl.cmake)