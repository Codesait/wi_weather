import 'dart:math';

import 'package:flutter/material.dart';

class EightSidedContainer extends StatelessWidget {
  final double size;
  final Color color;
  final Widget child;
  final EdgeInsetsGeometry padding;

  const EightSidedContainer({
    Key? key,
    required this.size,
    this.color = Colors.amber,
    required this.child,
    this.padding = const EdgeInsets.all(60),
  }) : super(key: key);

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
  final Color color;

  EightSidedPainter({required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final double w = size.width;
    final double h = size.height;
    final double cornerRadius = 30; // Controls the roundness of corners

    final Path path = Path();
    final Offset center = Offset(w / 2, h / 2);
    final double radius =
        w / 2 - cornerRadius; // Radius of the eight-sided shape

    // Generate 8 rounded corners by calculating angles
    for (int i = 0; i < 8; i++) {
      final double angle1 = (pi / 4) * i; // Start angle
      final double angle2 = (pi / 4) * (i + 1); // End angle

      final Offset point1 = Offset(
        center.dx + radius * cos(angle1),
        center.dy + radius * sin(angle1),
      );
      final Offset point2 = Offset(
        center.dx + radius * cos(angle2),
        center.dy + radius * sin(angle2),
      );

      if (i == 0) {
        path.moveTo(point1.dx, point1.dy); // Move to the first point
      }

      // Draw rounded corners using arcToPoint
      path.arcToPoint(
        point2,
        radius: Radius.circular(cornerRadius),
        clockwise: true,
      );
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
