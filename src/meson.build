subdir('gui')
subdir('core')
sources = [
          'application.cpp',
  ]

wxwidgets_dep = dependency(
	'wxWidgets',
	version : '>=3.0.0',
	modules : [
		'base',
		'core'
]
)
executable = executable(meson.project_name(),sources ,
		dependencies: [wxwidgets_dep, libMainWindow_dep,libDatabaseManager_dep],
		install: true,
		gui_app: true,
		)
