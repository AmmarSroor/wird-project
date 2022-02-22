import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/pages/login_page.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/pages/register_page.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_moon_logo.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/widgets/build_ramadan_message.dart';

class LoginAndRegisterPage extends StatelessWidget {
  static String routeName = 'LoginAndRegisterPage';
  double? screenWidth;
  double? screenHeight;
  AppBar? _appBar;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top;
    _appBar = AppBar(
      toolbarHeight: screenHeight!*0.2,
      backgroundColor: Color(HEX_BLUE_COLOR),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BuildRamadanMessage(),
          BuildMoonLogo(width: screenWidth!*0.2,height: screenHeight!*0.13,),
        ],
      ),
      automaticallyImplyLeading: false,
    );
    screenHeight = screenHeight! - _appBar!.preferredSize.height;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: _appBar,
        body: SafeArea(
          child: BlocConsumer<AccountCubit, AccountState>(
            listener: (context, state) {},
            builder: (context, state) {
              return Container(
                color: Color(HEX_LIGHT_WHITE_COLOR),
                child: Column(
                  children: [
                    // tab bar
                    SizedBox(
                      height: screenHeight! * 0.1,
                      child: TabBar(
                        indicatorColor: Color(HEX_BLUE_COLOR),
                        labelColor: Color(HEX_BLUE_COLOR),
                        labelStyle: TextStyle(
                          fontSize: screenWidth! * 0.05,
                        ),
                        unselectedLabelColor: Color(HEX_ORANGE_COLOR),
                        tabs: [
                          Tab(
                            text: LOGIN,
                          ),
                          Tab(
                            text: REGISTER,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight!*0.9,
                      child: TabBarView(
                        children: [
                          LoginPage(
                            screenWidth: screenWidth!,
                            screenHeight: screenHeight!,
                          ),
                          RegisterPage(
                            screenWidth: screenWidth!,
                            screenHeight: screenHeight!,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
