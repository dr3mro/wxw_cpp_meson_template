
wxdep = dependency(
   'wxWidgets',
   version : '>=3.0.0',
   modules : [
      'base',
      'core'
   ]
)

libmainwindow = library('mainwindow', 
          sources: ['mainwindow.cpp'], 
          dependencies: wxdep, 
          install: true,
          install_rpath: './libs/',
          build_rpath : './libs/')
libmainwindow_dep = declare_dependency(include_directories: ['.'], 
                                       link_with : libmainwindow)
