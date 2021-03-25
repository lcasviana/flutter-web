import 'package:flutter/material.dart';
import 'package:flutter_web/util/navigator.util.dart';

class Sidebar extends StatelessWidget {
  Widget _sidebarItem(BuildContext context, String title, String route) {
    return ListTile(
      title: Text(title),
      onTap: () => NavigatorUtil.navigate(context, route),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _sidebarItem(context, 'Home', '/'),
          _sidebarItem(context, 'Debug vs Release', '/environment'),
          _sidebarItem(context, 'HTTP Request', '/http'),
          _sidebarItem(context, 'Responsive', '/responsive'),
        ],
      ),
    );
  }
}
