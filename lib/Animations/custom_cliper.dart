import 'package:flutter/material.dart';

// ignore: camel_case_types
class custom_cliper extends StatelessWidget {
  const custom_cliper({super.key, required this.color});
final Color color;
  @override
  Widget build(BuildContext context) {

    // ignore: avoid_unnecessary_containers
    return Container(
      child: Stack(
        children: [
          Opacity(
            opacity: 1,
            child: ClipPath(
              clipper: BottomWaveClipper(),
              child: Container(color: color, height: 120),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // ignore: unnecessary_new
    var path = new Path();
    path.lineTo(0.0, size.height - 40);
    path.quadraticBezierTo(
        size.width / 4, size.height - 80, size.width / 2, size.height - 40);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
