import 'package:flutter/material.dart';

class ConfigurationService{
  static final ConfigurationService _instance = ConfigurationService._internal();

  ConfigurationService._internal();

  static ConfigurationService get instance => _instance;

  ThemeData  _themeData  = ThemeData.light();

  ThemeData get themeData  => _themeData;

  void toggleTheme(){
    if(_themeData == ThemeData.light()){
      _themeData = ThemeData.dark();
    }else{
      _themeData = ThemeData.light();
    }
  }

}