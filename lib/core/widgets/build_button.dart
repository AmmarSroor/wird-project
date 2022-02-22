import 'package:flutter/material.dart';
class BuildButton extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final int hexColor;
  final String text;
  final String routeName;

  BuildButton({
    required this.screenWidth,
    required this.screenHeight,
    required this.hexColor,
    required this.text,
    required this.routeName,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth*0.8,
      height: screenHeight*0.06,
      child: ElevatedButton(
        onPressed: (){
          Navigator.of(context).pushNamed(routeName);
        },
        child: Text(
          text,
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Color(hexColor)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
            ),
          ),
        ),
      ),
    );
  }
}
