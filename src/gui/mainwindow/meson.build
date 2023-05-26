
wxdep = dependency(
   'wxWidgets',
   version : '>=3.0.0',
   modules : [
      'base',
      'core'
   ]
)

if host_machine.system() == 'darwin'

  libMainWindow_static = static_library('mainwindow', 
          sources: ['mainwindow.cpp'], 
          dependencies: wxdep,
          install: false,
          )

  libMainWindow_dep = declare_dependency(include_directories: ['.'], link_with : libMainWindow_static)
else
  libMainWindow_shared = shared_library('mainwindow', 
          sources: ['mainwindow.cpp'], 
          dependencies: wxdep,
          install: true,
          link_args : '-Wl,--rpath,.',
          )

  libMainWindow_dep = declare_dependency(include_directories: ['.'], link_with : libMainMindow_shared)
endif
