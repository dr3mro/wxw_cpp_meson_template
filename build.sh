#!/bin/bash
if [[ $OSTYPE == 'darwin'* ]]; then
    [ -d ./_build/ ] && meson setup _build -Ddefault_library=shared --prefix=$(pwd)/_build/application.app --bindir=Contents/MacOS --wipe ||  meson setup _build -Ddefault_library=shared --prefix=$(pwd)/_build/application.app --bindir=Contents/MacOS
    [ -d ./_build/ ] && cd _build && meson compile && meson install 
else
    [ -d ./_build/ ] && meson setup _build --wipe ||  meson setup _build
    [ -d ./_build/ ] && cd _build && meson compile 
fi


