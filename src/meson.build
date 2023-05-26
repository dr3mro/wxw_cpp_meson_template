subdir('gui')
subdir('core')

wx_dep = dependency(
   'wxWidgets',
   version : '>=3.0.0',
   modules : [
      'base',
      'core'
   ]
)


sources = [
          'application.cpp',
  ]

executable = executable(meson.project_name(),sources ,
          dependencies: [wx_dep, libMainWindow_dep,libDatabaseManager_dep],
          install: true,
          gui_app: true,
          )

