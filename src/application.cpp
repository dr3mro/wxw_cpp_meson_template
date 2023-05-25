#include <wx/wx.h>
#include "gui/mainwindow/mainwindow.hpp"


class Application : public wxApp {

public:
  
  bool OnInit(){
    
    mainwindow = new MainWindow("Main Application window");
    mainwindow->Show();

  return true;

  }

  Application(){

  }
  ~Application(){

  }

private:
  MainWindow *mainwindow; 

};

wxIMPLEMENT_APP(Application);
