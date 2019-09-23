# This bash script formats GPGPU-Sim using clang-format-6.0
ROOT_DIR=$1
clang-format-6.0 -style=Google -i ${ROOT_DIR}/libcuda/*.h
clang-format-6.0 -style=Google -i ${ROOT_DIR}/libcuda/*.cc
clang-format-6.0 -style=Google -i ${ROOT_DIR}/src/*.h
clang-format-6.0 -style=Google -i ${ROOT_DIR}/src/*.cc
clang-format-6.0 -style=Google -i ${ROOT_DIR}/src/gpgpu-sim/*.h
clang-format-6.0 -style=Google -i ${ROOT_DIR}/src/gpgpu-sim/*.cc
clang-format-6.0 -style=Google -i ${ROOT_DIR}/src/cuda-sim/*.h
clang-format-6.0 -style=Google -i ${ROOT_DIR}/src/cuda-sim/*.cc
clang-format-6.0 -style=Google -i ${ROOT_DIR}/src/gpuwattch/*.h
clang-format-6.0 -style=Google -i ${ROOT_DIR}/src/gpuwattch/*.cc
