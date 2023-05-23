#include "mainwindow.hpp"


MainWindow::MainWindow(const wxString& title) : wxFrame(nullptr, wxID_ANY, title){
  this->SetClientSize(1200,800);
  // this->Maximize();
  this->Center();
}
