#!/bin/bash
if [[ $OSTYPE == 'darwin'* ]]; then
    [ -d ./_build/ ] && meson setup _build -Ddefault_library=static --wipe ||  meson setup _build -Ddefault_library=static
else
    [ -d ./_build/ ] && meson setup _build --wipe ||  meson setup _build
fi

 
cd _build
meson compile

