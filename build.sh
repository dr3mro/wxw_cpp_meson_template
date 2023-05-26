#!/bin/bash
build_dir=/_build
if [[ $OSTYPE == 'darwin'* ]]; then
  
  package=$(pwd)$build_dir/App
  
  if [ -d ./_build/ ] 
    then 
      meson setup _build -Ddefault_library=static --prefix="$package"/application.app --bindir=Contents/MacOS --wipe 
    else
      meson setup _build -Ddefault_library=static --prefix="$package"/application.app --bindir=Contents/MacOS
  fi  
  
  mkdir -p "$package"
  
  if [ -d ./_build/ ] &&  cd _build && meson compile && meson install  
    then
      if [ "$1" == "run" ] 
        then
          open "$package"/application.app 
      fi
  fi  
  
  ln -s /Applications "$package" 


  if [ "$1" != "dmg" ] 
    then
     exit 
  fi
  
  if  [ ! -x "$(command -v create-dmg)" ] 
    then
      brew install create-dmg && create-dmg application.dmg "$package" 
    else
     create-dmg application.dmg "$package" 
  fi

else
    if [ -d ./_build/ ]
    then
      meson setup _build --wipe
    else
      meson setup _build
    fi

    [ -d ./_build/ ] && cd _build && meson compile 
fi


