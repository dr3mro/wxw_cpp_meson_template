project ('application','cpp', version : '0.1', default_options : ['c_std=c11', 'cpp_std=c++17'])
if host_machine.system() == 'windows'
  message('Configuring for : ' + host_machine.system())
  add_project_link_arguments('-Wl,--rpath,.',language:'cpp')

  add_project_link_arguments('-DCMAKE_TOOLCHAIN_FILE="$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake',language:'cpp')
  add_project_link_arguments('-DCMAKE_TOOLCHAIN_FILE="$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake',language:'c')
  
  add_global_arguments('-Ddefault_library=shared', language : 'cpp')
  add_global_arguments('-Ddefault_library=shared', language : 'c')
endif

if host_machine.system() == 'linux'
  message('Configuring for : ' + host_machine.system())

  add_project_link_arguments('-Wl,--rpath,../lib64/',language:'cpp')
  
  add_project_link_arguments('-DCMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake',language:'cpp')
  add_project_link_arguments('-DCMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake',language:'c')
  
  add_global_arguments('-Ddefault_library=shared', language : 'cpp')
  add_global_arguments('-Ddefault_library=shared', language : 'c')
endif


if host_machine.system() == 'darwin'
  message('Configuring for : ' + host_machine.system())

  add_project_link_arguments('-DCMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake',language:'cpp')
  add_project_link_arguments('-DCMAKE_TOOLCHAIN_FILE=$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake',language:'c')
  
  add_global_arguments('-Ddefault_library=shared', language : 'cpp')
  add_global_arguments('-Ddefault_library=shared', language : 'c')
 
  install_data('resources/macos/icon.icns', install_dir : 'Contents/Resources')
  install_data('resources/macos/Info.plist', install_dir : 'Contents')
endif

subdir('./src/')
#vcpkg = find_program('vcpkg', required : true)
#run_command(vcpkg , 'install' , check: true)

