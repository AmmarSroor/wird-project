import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';

class BuildRamadanMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      COMPETITIONS + WIRD,
      style: TextStyle(
        fontSize: MediaQuery.of(context).size.width * 0.125,
        color: Color(HEX_LIGHT_BLUE_COLOR),
      ),
    );
  }
}
