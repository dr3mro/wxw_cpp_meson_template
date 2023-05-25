#!/bin/bash
[ -d ./_build/ ] && meson setup _build --wipe ||  meson setup _build 
cd _build
meson compile

