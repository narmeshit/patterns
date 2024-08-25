import 'package:flutter/material.dart';
import 'package:patterns/service.dart';

class ConfigScreen extends StatefulWidget {
  final Function onThemeChanged;

  const ConfigScreen({super.key, required this.onThemeChanged});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  late ThemeData _currentTheme;

  @override
  void initState() {
    super.initState();
    _currentTheme = ConfigurationService.instance.themeData;
  }

  void _toggleTheme() {
    setState(() {
      ConfigurationService.instance.toggleTheme();
      _currentTheme = ConfigurationService.instance.themeData;
      widget.onThemeChanged();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aplicación de Configuración'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Modo: ${_currentTheme == ThemeData.light() ? "Claro" : "Oscuro"}',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            IconButton.outlined(
              onPressed: _toggleTheme,
              icon: _currentTheme == ThemeData.light()
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode),
            ),
          ],
        ),
      ),
    );
  }
}
