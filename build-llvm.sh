git clone https://github.com/llvm/llvm-project.git
cd llvm-project
mkdir build
cd build
cmake -DLLVM_USE_LINKER=gold -DLLVM_ENABLE_PROJECTS=clang -G "Unix Makefiles" ../llvm
make
