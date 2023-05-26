#include "gui/mainwindow/mainwindow.hpp"
#include <wx/wx.h>

#include "core/database/databasemanager/databasemanager.hpp"

class Application : public wxApp {

public:
  bool OnInit() {
    DatabaseManager dbm;
    wxApp::SetExitOnFrameDelete(true);
    mainwindow = new MainWindow("Main Application window");
    mainwindow->Show();

    return true;
  }

  Application() {}
  ~Application() {}

private:
  MainWindow *mainwindow;
};

wxIMPLEMENT_APP(Application);
