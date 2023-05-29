if [ $OSTYPE == "darwin"* ]
  then
    brew install create-dmg
    brew install meson
    brew install ninja 
    xcode-select install 
  elif [ $OSTYPE == "linux"* ]
    then
    
fi

