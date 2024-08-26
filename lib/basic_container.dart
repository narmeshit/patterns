import 'package:flutter/material.dart';

class BasicContainer extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const BasicContainer({
    super.key,
    required this.width,
    required this.height,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 4),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset:  Offset(5, 5),
          ),
        ],
      ),
    );
  }
}
