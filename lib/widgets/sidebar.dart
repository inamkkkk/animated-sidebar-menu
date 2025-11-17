import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:animated_sidebar_menu/services/sidebar_service.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final sidebarService = Provider.of<SidebarService>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Sidebar Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context);
              // Handle Home navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
              // Handle Settings navigation
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.pop(context);
              // Handle About navigation
            },
          ),
        ],
      ),
    );
  }
}