project ('app','cpp', version : '0.1' , default_options: ['default_library=static',])
if host_machine.system() == 'darwin'
  vcpkg = find_program('vcpkg', required : true)
  run_command(vcpkg , 'install' , check: true)
endif

wxdep = dependency(
   'wxWidgets',
   version : '>=3.0.0',
   modules : [
      'base',
      'core'
   ]
)

executable('app', 'main.cpp' ,dependencies : [wxdep] ) 

