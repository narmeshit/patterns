import 'package:flutter/material.dart';

enum ButtonType {
  raised,
  flat,
  outline;
}

class ButtonFactory {
  static Widget createButton(
      ButtonType type, String text, VoidCallback onPressed) {
    switch (type) {
      case ButtonType.raised:
        return ElevatedButton(
          onPressed: onPressed,
          child: Text(text),
        );
      case ButtonType.flat:
        return TextButton(
          onPressed: onPressed,
          child: Text(text),
        );
      case ButtonType.outline:
        return OutlinedButton(
          onPressed: onPressed,
          child: Text(text),
        );

      default:
        return Container();
    }
  }
}
