import 'package:flutter/material.dart';

class Drawing extends StatelessWidget {
  const Drawing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        size: const Size(
          5000,
          5000,
        ),
        painter: RPSCustomPainter(),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path0 = Path();
    path0.moveTo(0, size.height * 0.2946429);
    path0.lineTo(0, size.height);
    path0.lineTo(size.width, size.height);
    path0.lineTo(size.width, size.height * 0.59);

    Paint paint0 = Paint();
    paint0 = Paint()..style = PaintingStyle.fill;
    paint0.color = const Color(0xff5E5C87).withOpacity(1.0);

    canvas.drawPath(path0, paint0);

    Path path1 = Path();
    path1.moveTo(size.width, size.height * 0.35);
    path1.lineTo(size.width, size.height * 0.59);
    path1.lineTo(size.width * 0.588, (size.height * 0.469));

    Paint paint1 = Paint();
    paint1 = Paint()..style = PaintingStyle.fill;
    paint1.color = const Color(0xffFF00FF).withOpacity(1.0);

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
