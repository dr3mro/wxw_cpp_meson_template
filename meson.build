project ('application','cpp', version : '0.1' , 
        default_options: ['default_library=shared'])
if host_machine.system() == 'darwin'
  vcpkg = find_program('vcpkg', required : true)
  run_command(vcpkg , 'install' , check: true)
endif

wx_dep = dependency(
   'wxWidgets',
   version : '>=3.0.0',
   modules : [
      'base',
      'core'
   ]
)
subdir('./src/gui')
sources = [
          'src/application.cpp',
          # 'src/gui/mainwindow.cpp' 
  ]
executable(meson.project_name(),sources ,
dependencies: [wx_dep, libmainwindow_dep],
          install: true,
          install_rpath: './libs/',
          build_rpath : './libs/')

