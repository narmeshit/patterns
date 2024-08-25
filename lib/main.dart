import 'package:flutter/material.dart';
import 'package:patterns/screen.dart';
import 'package:patterns/service.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ThemeData _themeData = ConfigurationService.instance.themeData;

  void _updateTheme(){
    setState(() {
      _themeData = ConfigurationService.instance.themeData;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _themeData,
      home: ConfigScreen(onThemeChanged: _updateTheme),
    );
  }
}
