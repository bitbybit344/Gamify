import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomPaint(
            painter: TopBar(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(Icons.arrow_back),
                Image.asset('images/person-avatar.png'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


class TopBar extends CustomPainter{

  @override
  void paint(Canvas canvas, Size size) {
    final startPoint = Offset(0, 0);
    final controlPoint = Offset(150, 200);
    final endPoint = Offset(400,0);

    final paint = Paint()
      ..color = Colors.blue
      ..strokeWidth = 3
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(startPoint.dx, startPoint.dy);
    path.lineTo(0,300);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}