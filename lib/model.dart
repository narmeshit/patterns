import 'package:flutter/material.dart';

class AppConfig {
  final ThemeData themeData;

  AppConfig({required this.themeData});

  AppConfig copyWith({ThemeData? themeData}) {
    return AppConfig(
      themeData: themeData ?? this.themeData,
    );
  }
}
