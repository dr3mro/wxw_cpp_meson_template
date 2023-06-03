winget install Microsoft.PowerShell
winget install meson
$env:VCPKG_ROOT="$(pwd)\vcpkg"
$env:path="$env:VCPKG_ROOT;"+$env:path
cd vcpkg
.\bootstrap-vcpkg.bat
cd ..
Get-Command vcpkg
vcpkg install wxwidgets:x64-windows-static

pacman -S mingw-w64-ucrt-x86_64-toolchain
pacman -S mingw-w64-x86_64-wxWidgets