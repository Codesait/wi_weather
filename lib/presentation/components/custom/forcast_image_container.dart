import 'dart:math';

import 'package:flutter/material.dart';

class EightSidedContainer extends StatelessWidget {
  const EightSidedContainer({
    required this.size,
    required this.child,
    super.key,
    this.color = Colors.amber,
    this.padding = const EdgeInsets.all(60),
  });
  final double size;
  final Color color;
  final Widget child;
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: EightSidedPainter(color: color),
      child: Container(
        width: size,
        height: size,
        padding: padding,
        child: child, // Position the child inside the container
      ),
    );
  }
}

class EightSidedPainter extends CustomPainter {
  EightSidedPainter({required this.color});
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final w = size.width;
    final h = size.height;
    const cornerRadius = 30; // Controls the roundness of corners

    final path = Path();
    final center = Offset(w / 2, h / 2);
    final radius = w / 2 - cornerRadius; // Radius of the eight-sided shape

    // Generate 8 rounded corners by calculating angles
    for (var i = 0; i < 8; i++) {
      final angle1 = (pi / 4) * i; // Start angle
      final angle2 = (pi / 4) * (i + 1); // End angle

      final point1 = Offset(
        center.dx + radius * cos(angle1),
        center.dy + radius * sin(angle1),
      );
      final point2 = Offset(
        center.dx + radius * cos(angle2),
        center.dy + radius * sin(angle2),
      );

      if (i == 0) {
        path.moveTo(point1.dx, point1.dy); // Move to the first point
      }

      // Draw rounded corners using arcToPoint
      path.arcToPoint(
        point2,
        radius: Radius.circular(double.parse(cornerRadius.toString())),
      );
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
