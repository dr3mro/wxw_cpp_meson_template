
wxdep = dependency(
   'wxWidgets',
   version : '>=3.0.0',
   modules : [
      'base',
      'core'
   ]
)

if host_machine.system() == 'darwin'

  libmainwindow_static = static_library('mainwindow', 
          sources: ['mainwindow.cpp'], 
          dependencies: wxdep,
          install: false,
          )

  libmainwindow_dep = declare_dependency(include_directories: ['.'], link_with : libmainwindow_static)
else
  libmainwindow_shared = shared_library('mainwindow', 
          sources: ['mainwindow.cpp'], 
          dependencies: wxdep,
          install: true,
          link_args : '-Wl,--rpath,.',
          )

  libmainwindow_dep = declare_dependency(include_directories: ['.'], link_with : libmainwindow_shared)
endif
