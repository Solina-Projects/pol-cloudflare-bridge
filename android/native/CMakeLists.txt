# Build libpol_llm.so for Solina CF-Bridge (arm64-v8a, CPU-only llama.cpp).
#
# Configure with:
#   cmake -S android/native -B <build-dir> -G "Unix Makefiles" \
#     -DCMAKE_TOOLCHAIN_FILE=$NDK/build/cmake/android.toolchain.cmake \
#     -DANDROID_ABI=arm64-v8a -DANDROID_PLATFORM=android-26 \
#     -DANDROID_STL=c++_static -DCMAKE_BUILD_TYPE=Release \
#     -DLLAMA_SRC=<path to llama.cpp checkout at 919794500475862f6768c353255469dc661cb734> \
#     -DLLAMA_BUILD_EXAMPLES=OFF -DLLAMA_BUILD_TESTS=OFF \
#     -DLLAMA_BUILD_SERVER=OFF -DLLAMA_BUILD_TOOLS=OFF -DGGML_OPENMP=OFF
#   cmake --build <build-dir> --target pol_llm
#   llvm-strip <build-dir>/libpol_llm.so   # 62 MB -> ~6.8 MB
#   cp <build-dir>/libpol_llm.so android/lib/arm64-v8a/
#
# llama.cpp is fetched in CI (sparse checkout: src, include, ggml, cmake,
# vendor — ~50 MB) and is NOT vendored in this repo.
cmake_minimum_required(VERSION 3.14)
project(pol_llm CXX)

set(LLAMA_SRC "" CACHE PATH "llama.cpp source dir (pinned commit 919794500475862f6768c353255469dc661cb734)")
if(NOT LLAMA_SRC)
    message(FATAL_ERROR "LLAMA_SRC not set — pass -DLLAMA_SRC=<llama.cpp checkout>")
endif()

# Static llama + ggml linked into our single shared lib (no libc++_shared.so
# dependency: ANDROID_STL=c++_static is passed on the cmake command line).
set(BUILD_SHARED_LIBS OFF CACHE BOOL "" FORCE)

add_subdirectory(${LLAMA_SRC} ${CMAKE_BINARY_DIR}/llama)

add_library(pol_llm SHARED pol_llm_solina.cpp)
target_link_libraries(pol_llm PRIVATE llama ggml)
