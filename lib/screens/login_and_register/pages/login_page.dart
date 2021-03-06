import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_button.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_cusom_text_span.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_logo_message.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_ramadan_mubarak_message.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/main_page.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/widgets/build_contact_us_message.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/widgets/build_custom_text_field.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/widgets/build_switch_button.dart';

class LoginPage extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  LoginPage({
    required this.screenHeight,
    required this.screenWidth,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
              child: RichText(
                text: TextSpan(children: [
                  buildTextSpan(text: ENTER,hexColor: HEX_BLUE_COLOR,screenWidth: screenWidth),
                  buildTextSpan(text: YOUR_ACCOUNT,hexColor: HEX_RED_COLOR,screenWidth: screenWidth),
                  buildTextSpan(text: NOW,hexColor: HEX_BLUE_COLOR,screenWidth: screenWidth),
                ]),
              ),
            ),
            BuildCustomTextField(
              hint: USERNAME,
              screenWidth: screenWidth,
              prefixIcon: Icons.person,
              hasSuffixIcon: false,
            ),
            BuildCustomTextField(
              hint: PASSWORD,
              screenWidth: screenWidth,
              prefixIcon: Icons.lock,
              hasSuffixIcon: true,
            ),
            //BuildSwitchButton(),
            SizedBox(
              height: screenHeight*0.06,
            ),
            ContactUsMessage(),
            SizedBox(
              height: screenHeight*0.07,
            ),
            BuildButton(
              screenWidth: screenWidth ,
              screenHeight: screenHeight + screenHeight*0.3,
              hexColor: HEX_LIGHT_BLUE_COLOR,
              text: LOGIN,
              routeName: MainPage.routeName,
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            BuildLogoMessage(screenWidth: screenWidth, screenHeight: screenHeight,),
          ],
        ),
      ),
    );
  }
}
