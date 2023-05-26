subdir('./gui')

wx_dep = dependency(
   'wxWidgets',
   version : '>=3.0.0',
   modules : [
      'base',
      'core'
   ]
)


sources = [
          'src/application.cpp',
  ]

executable = executable(meson.project_name(),sources ,
          dependencies: [wx_dep, libmainwindow_dep],
          install: true,
          gui_app: true,
          )

