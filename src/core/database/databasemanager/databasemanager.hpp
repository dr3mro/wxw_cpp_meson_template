#pragma once

class DatabaseManager {
public:
  DatabaseManager();
  ~DatabaseManager();

  bool Init();

private:
  // std::unique_ptr<SQLite::Database> db;
};
