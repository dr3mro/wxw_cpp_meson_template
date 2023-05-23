#!/bin/bash
[ -d ./_build/ ] && meson setup _build --wipe ||  meson setup _build 
ninja -C _build && ./_build/application

