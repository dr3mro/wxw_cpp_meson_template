#!/bin/bash
if [[ $OSTYPE == 'darwin'* ]]; then
    [ -d ./_build/ ] && meson setup _build -Ddefault_library=static --prefix=$(pwd)/_build/application.app --bindir=Contents/MacOS --wipe ||  meson setup _build -Ddefault_library=static --prefix=$(pwd)/_build/application.app --bindir=Contents/MacOS
    cd _build
    meson compile
    meson install 
else
    [ -d ./_build/ ] && meson setup _build --wipe ||  meson setup _build
    cd _build   
    meson compile 
fi


