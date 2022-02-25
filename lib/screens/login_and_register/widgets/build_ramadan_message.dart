import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';

class BuildRamadanMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      RAMADAN_MUBARAK,
      style: TextStyle(
        fontSize: 35,
        color: Colors.white,
      ),
    );
  }
}
