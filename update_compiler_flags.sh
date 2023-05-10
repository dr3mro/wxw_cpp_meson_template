#!/bin/bash
echo $(wx-config --cxxflags --libs) | tr ' ' '\n' > compile_flags.txt
echo "Done!"
