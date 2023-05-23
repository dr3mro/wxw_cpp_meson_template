#include <wx/wx.h>
#include "application.hpp"


wxIMPLEMENT_APP(Application);


bool Application::OnInit(){
  
  mainwindow = new MainWindow("Main Application window");
  mainwindow->Show();

  return true;
}


Application::Application(){
}

Application::~Application(){
}
