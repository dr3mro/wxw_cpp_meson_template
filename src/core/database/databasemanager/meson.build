sqlite3_subproj = subproject('sqlite3')
sqlite3_dep = sqlite3_subproj.get_variable('sqlite3_dep')

if host_machine.system() == 'darwin'
  libDatabaseManager = shared_library('databasemanager', 
          sources: ['databasemanager.cpp'], 
          dependencies: sqlite3_dep,
          install: true,
  )       
else
  libDatabaseManager = shared_library('databasemanager', 
          sources: ['databasemanager.cpp'], 
          dependencies: sqlite3_dep,
          install: true,
          link_args : '-Wl,--rpath,.',
  )
endif


libDatabaseManager_dep = declare_dependency(include_directories: ['.'] , 
                                            link_with : libDatabaseManager,)

