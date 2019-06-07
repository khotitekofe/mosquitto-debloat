#!/usr/bin/env sh

# Need to use cmake for this on Mac, and supply SSL paths.
# First set output dir.
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "./build/")
cmake -DOPENSSL_ROOT_DIR=/usr/local/Cellar/openssl/1.0.2r -DOPENSSL_LIBRARIES=/usr/local/Cellar/openssl/1.0.2r/lib .
