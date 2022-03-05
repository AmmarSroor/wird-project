import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/images.dart';
class BuildWirdLogo extends StatelessWidget {
  final double width;
  final double height;
  BuildWirdLogo({
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      kLOGO,
      height: height,
      width: width,
      fit: BoxFit.fill,
    );
  }
}
