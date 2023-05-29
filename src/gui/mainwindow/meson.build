
wxdep = dependency(
   'wxWidgets',
   version : '>=3.0.0',
   modules : [
      'base',
      'core'
   ]
)

if host_machine.system() == 'darwin'
  libMainWindow = shared_library('mainwindow', 
          sources: ['mainwindow.cpp'], 
          dependencies: wxdep,
          install: true,
          )
else
  libMainWindow = shared_library('mainwindow', 
          sources: ['mainwindow.cpp'], 
          dependencies: wxdep,
          install: true,
          link_args : '-Wl,--rpath,.',
          )
endif
libMainWindow_dep = declare_dependency(include_directories: ['.'], link_with : libMainWindow)
