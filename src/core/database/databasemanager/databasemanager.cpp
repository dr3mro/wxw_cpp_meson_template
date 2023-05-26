#include "databasemanager.hpp"

#include <stdio.h>

DatabaseManager::DatabaseManager() {
  sqlite3 *db;
  char *zErrMsg = 0;
  int rc;

  rc = sqlite3_open("test.db", &db);

  if (rc) {
    fprintf(stderr, "Can't open database: %s\n", sqlite3_errmsg(db));
    return;
  } else {
    fprintf(stderr, "Opened database successfully\n");
  }
  sqlite3_close(db);
}

DatabaseManager::~DatabaseManager() {}

bool DatabaseManager::Init() { return true; }
