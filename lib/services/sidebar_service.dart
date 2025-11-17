import 'package:flutter/material.dart';

class SidebarService extends ChangeNotifier {
  bool _isSidebarOpen = false;

  bool get isSidebarOpen => _isSidebarOpen;

  void toggleSidebar() {
    _isSidebarOpen = !_isSidebarOpen;
    notifyListeners();
  }
}