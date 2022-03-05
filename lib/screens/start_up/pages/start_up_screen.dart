import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_ramadan_mubarak_message.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/pages/login_and_register_page.dart';
import 'package:ramadan_cmpetitions/screens/start_up/widgets/build_logo.dart';

class StartUpScreen extends StatefulWidget {
  @override
  State<StartUpScreen> createState() => _StartUpScreenState();
}

class _StartUpScreenState extends State<StartUpScreen> {
  _navigateToNextPage() async{
    Future.delayed(Duration(seconds: 4)).then((value) =>
      Navigator.of(context).pushNamed(LoginAndRegisterPage.routeName),
    );
  }
  @override
  void initState() {
    super.initState();
    _navigateToNextPage();
  }
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
          color: Color(HEX_BLUE_COLOR),
          child: Stack(
            children: [
              BuildLogo(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
              ),
              // BuildRamadanTitle(
              //   screenHeight: screenHeight,
              //   screenWidth: screenWidth,
              // ),
              // BuildWelcomeTitle(
              //   screenWidth: screenWidth,
              //   screenHeight: screenHeight,
              // ),
              Padding(
                padding: EdgeInsets.only(bottom: screenWidth * 0.05),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: BuildRamadanMubarakMessage(screenWidth: screenWidth, hexColor: HEX_LIGHT_WHITE_COLOR,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
