#!/bin/bash
echo $(wx-config --cxxflags --libs) | tr ' ' '\n' > compile_flags.txt
# echo -I"$(pwd)"/vcpkg_installed/x64-osx/include/ >> compile_flags.txt
echo "Done!"
