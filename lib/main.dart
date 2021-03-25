import 'package:flutter/material.dart';
import 'package:flutter_web/pages/environment.page.dart';
import 'package:flutter_web/pages/home.page.dart';
import 'package:flutter_web/pages/http.page.dart';
import 'package:flutter_web/pages/responsive.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light,
        fontFamily: 'Calibri',
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.lime,
        brightness: Brightness.dark,
        fontFamily: 'Calibri',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/environment': (context) => EnvironmentPage(),
        '/http': (context) => HttpPage(),
        '/responsive': (context) => ResponsivePage(),
      },
    );
  }
}
