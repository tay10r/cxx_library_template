#!/bin/bash

set -e
set -u

mkdir check-build && cd check-build

cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_EXPORT_COMPILE_COMMANDS=ON

cmake --build .

ctest --config Release

cd ..

rm -R check-build

echo "All good."
