#!/bin/bash

build_dir="$(pwd)/_build"

if [[ $OSTYPE == 'darwin'* ]] 
  then
    package="$build_dir"/App
  
    if [ -d "$build_dir" ] 
      then 
        meson setup _build -Ddefault_library=static --prefix="$package"/application.app --bindir=Contents/MacOS --wipe 
      else
        meson setup _build -Ddefault_library=static --prefix="$package"/application.app --bindir=Contents/MacOS
    fi  
  
  mkdir -p "$package"
  
  if [ -d "$build_dir" ] &&  cd _build && meson compile && meson install --skip-subprojects 
    then
      if [ "$1" == "run" ] 
        then
          open "$package"/application.app 
      fi
  fi  
  
  if [ "$1" == "dmg" ] 
    then
        ln -s /Applications "$package" 
        if  [ ! -x "$(command -v create-dmg)" ] 
          then
            brew install create-dmg && create-dmg application.dmg "$package" 
          else
            create-dmg application.dmg "$package" 
        fi
fi
  

else
  if [ -d "$build_dir" ]
    then
      meson setup _build --wipe
    else
      meson setup _build
    fi

    if [ -d "$build_dir" ] && cd _build && meson compile
      then 
        if [ "$1" == "run" ]
          then
            mkdir -p "$build_dir/output/usr/local/lib" 
            if meson install --destdir="$build_dir/output" --skip-subprojects 
              then
                cd "$build_dir/output/usr/local/bin"
                ldd ./application | awk 'NF == 4 { system("cp " $3 " ../lib64/") }' 
                ldd ./application | grep '\.\./' | awk 'NF == 4 { system("cp " $3 " ../lib/") }'
                rm -rf ../lib64 && mv ../lib ../lib64 
                ./application
            fi
        fi
    fi
fi

 

