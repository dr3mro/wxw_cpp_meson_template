#pragma once

#include <memory>
#include <sqlite3.h>

class DatabaseManager {
public:
  DatabaseManager();
  ~DatabaseManager();

  bool Init();

private:
  // std::unique_ptr<SQLite::Database> db;
};
