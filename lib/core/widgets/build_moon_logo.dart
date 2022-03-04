import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/images.dart';
class BuildMoonLogo extends StatelessWidget {
  final double width;
  final double height;
  BuildMoonLogo({
    required this.width,
    required this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      kMoonLogo,
      height: height,
      width: width,
      fit: BoxFit.fill,
    );
  }
}
