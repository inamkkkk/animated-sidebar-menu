import 'package:flutter/material.dart';
import 'package:animated_sidebar_menu/screens/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:animated_sidebar_menu/services/sidebar_service.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( 
      create: (context) => SidebarService(),
      child: MaterialApp(
        title: 'Animated Sidebar Menu',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}