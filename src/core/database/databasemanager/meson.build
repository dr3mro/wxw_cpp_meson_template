sqlite3_subproj = subproject('sqlite3')
sqlite3_dep = sqlite3_subproj.get_variable('sqlite3_dep')

libDatabaseManager = static_library('databasemanager', 
          sources: ['databasemanager.cpp'], 
          dependencies: sqlite3_dep,
          install: false,
          )

libDatabaseManager_dep = declare_dependency(include_directories: ['.'] , 
                                            link_with : libDatabaseManager,)

