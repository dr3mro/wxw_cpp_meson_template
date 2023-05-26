project ('application','cpp', version : '0.1')

if host_machine.system() == 'linux'
  add_project_link_arguments('-Wl,--rpath,../lib64/',language:'cpp')
  add_global_arguments('-Ddefault_library=shared', language : 'cpp')

endif


if host_machine.system() == 'darwin'
  add_global_arguments('-Ddefault_library=static', language : 'cpp')
  vcpkg = find_program('vcpkg', required : true)
  run_command(vcpkg , 'install' , check: true)
  install_data('resources/macos/icon.icns', install_dir : 'Contents/Resources')
  install_data('resources/macos/Info.plist', install_dir : 'Contents')
endif

subdir('./src/')

