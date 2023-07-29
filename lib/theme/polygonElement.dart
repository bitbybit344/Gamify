import 'dart:math';
import 'package:flutter/material.dart';

class Polygon extends CustomPainter{

  final int sides;
  final double off_x,off_y;
  final radius_factor;
  final double rotation;
  final Color color;
  Polygon({required this.sides,required this.off_x,required this.off_y,required this.radius_factor,required this.rotation,required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 3;

    final path = Path();
    final center = Offset(size.width*off_x,size.height*off_y);
    final radius = size.width/radius_factor ;
    final angle = (2*pi)/sides;
    final angles = List.generate(sides, (index) => index*angle+rotation);
    path.moveTo(center.dx + radius*cos(rotation),center.dy + radius*sin(rotation));
    for(final angle in angles){
      path.lineTo(center.dx + radius*cos(angle),center.dy + radius*sin(angle));
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}