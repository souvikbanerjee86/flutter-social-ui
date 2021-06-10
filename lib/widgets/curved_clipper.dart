import 'package:flutter/cupertino.dart';

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, (4 * size.height) / 5);
    Offset curvePoint1 = Offset(size.width / 4, size.height);
    Offset centerPoint = Offset(size.width / 2, (4 * size.height) / 5);

    path.quadraticBezierTo(
        curvePoint1.dx, curvePoint1.dy, centerPoint.dx, centerPoint.dy);

    Offset curvePoint2 = Offset((3 * size.width) / 4, (3 * size.height) / 5);
    Offset centerPoint2 = Offset(size.width, (4 * size.height) / 5);

    path.quadraticBezierTo(
        curvePoint2.dx, curvePoint2.dy, centerPoint2.dx, centerPoint2.dy);

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
