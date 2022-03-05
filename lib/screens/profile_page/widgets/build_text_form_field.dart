import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';

class BuildTextFormField extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final TextEditingController controller;
  BuildTextFormField({
    required this.screenWidth,
    required this.screenHeight,
    required this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenHeight,
      decoration: BoxDecoration(
        border: Border.all(
            width: 1.0, color: Color(HEX_BLUE_COLOR)),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: InputBorder.none,
          ),
          controller:controller,
          textAlignVertical:TextAlignVertical.center,
          enabled: false,
        ),
      ),
    );
  }
}
