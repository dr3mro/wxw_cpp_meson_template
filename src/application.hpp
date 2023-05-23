#include <wx/wx.h>
#include "mainwindow.hpp"

class Application : public wxApp {
public:
  bool OnInit();

  Application();
  ~Application();

private:
  MainWindow *mainwindow; 

};

