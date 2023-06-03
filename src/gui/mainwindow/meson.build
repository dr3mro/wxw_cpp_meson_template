if host_machine.system() == 'windows'
	wxwidgets_dep = dependency(
	'wxWidgets',
	version : '>=3.0.0',
	modules : [
		'base',
		'core'
	])
	libMainWindow = shared_library('mainwindow', 
		sources: ['mainwindow.cpp'], 
		dependencies: wxwidgets_dep,
		install: true,
	)
else
	wxwidgets_dep = dependency(
	'wxWidgets',
	version : '>=3.0.0',
	modules : [
		'base',
		'core'
	])
	if host_machine.system() == 'darwin'
		libMainWindow = shared_library('mainwindow', 
			sources: ['mainwindow.cpp'], 
			dependencies: wxwidgets_dep,
			install: true,
			)
	elif host_machine.system() == 'linux'
		libMainWindow = shared_library('mainwindow', 
			sources: ['mainwindow.cpp'], 
			dependencies: wxwidgets_dep,
			install: true,
			link_args : '-Wl,--rpath,.',
			)
	endif
endif

libMainWindow_dep = declare_dependency(include_directories: ['.'], link_with : libMainWindow)
