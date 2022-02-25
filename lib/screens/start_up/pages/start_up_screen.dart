import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/images.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_ramadan_mubarak_message.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_button.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/pages/login_and_register_page.dart';
import 'package:ramadan_cmpetitions/screens/start_up/widgets/build_logo.dart';
import 'package:ramadan_cmpetitions/screens/start_up/widgets/build_ramadan_title.dart';
import 'package:ramadan_cmpetitions/screens/start_up/widgets/build_welcome_title.dart';

class StartUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: screenWidth,
          height: screenHeight,
          child: Column(
            children: [
              Container(
                width: screenWidth,
                height: screenHeight * 0.7,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(kSTART_UP_BACKGROUND),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: [
                    BuildRamadanTitle(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                    ),
                    BuildWelcomeTitle(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                    BuildLogo(
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                    ),
                  ],
                ),
              ),
              BuildButton(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                hexColor: HEX_BLUE_COLOR,
                text: START_NOW,
                routeName: LoginAndRegisterPage.routeName,
              ),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              BuildButton(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                hexColor: HEX_ORANGE_COLOR,
                text: LOGIN,
                routeName: LoginAndRegisterPage.routeName,
              ),
              SizedBox(
                height: screenHeight * 0.09,
              ),
              BuildRamadanMubarakMessage(
                screenWidth: screenWidth,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
