import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_image_profile.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';
import 'package:ramadan_cmpetitions/screens/profile_page/pages/profile_page.dart';
import 'package:url_launcher/url_launcher.dart';

class BuildDrawer extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildDrawer({
    required this.screenHeight,
    required this.screenWidth,
  });

  void launchWhatsApp({required int phone,required String message,}) async {
    String url = "https://api.whatsapp.com/send?phone=$phone&text=$message";
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: screenHeight * 0.25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/background3.jpg'
                      ),
                      fit: BoxFit.fill
                  )
              ),
            ),
            Column(
              children: [
                Container(
                  width: screenWidth*0.3,
                  height: screenWidth*0.3,
                  margin: EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.orangeAccent,
                      ),
                      borderRadius: BorderRadius.circular(200)
                  ),
                  child: BuildImageProfile(screenWidth: screenWidth,screenHeight: screenHeight,),
                ),
                Text(
                  'Ammar Abu Srour',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.05
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.035,
                ),
                Divider(
                  color: Colors.black,
                  endIndent: screenWidth * 0.12,
                  indent: screenWidth * 0.12,
                ),
                SizedBox(
                  height: screenHeight * 0.04,
                ),
                ListTile(
                  title: Text(
                    USER_GUIDE,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.05
                    ),
                  ),
                  trailing: Icon(
                    Icons.ondemand_video_rounded,
                    color: Color(HEX_BLUE_COLOR),
                  ),
                  //shape: UnderlineInputBorder(),
                ),
                ListTile(
                  title: Text(
                    PROFILE,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.05
                    ),
                  ),
                  //shape: UnderlineInputBorder(),
                  trailing: Icon(Icons.person,color: Color(HEX_BLUE_COLOR),),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                  },
                ),
                ExpansionTile(
                  iconColor: Color(HEX_BLUE_COLOR),
                  collapsedIconColor: Color(HEX_BLUE_COLOR),
                  textColor: Color(HEX_BLUE_COLOR),
                  onExpansionChanged: (changeValue){
                    HomePageCubit.get(context).pressOnContactUs = changeValue;
                  },
                  title: Text(
                    CONTACT_US,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.05
                    ),
                  ),
                  trailing: Icon(
                    HomePageCubit.get(context).contactUsPressed
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    size: 25,
                  ),
                  children: [
                    ListTile(
                      title: Text(
                        '0781497808',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: screenWidth * 0.04
                        ),
                      ),
                      onTap: (){
                        launchWhatsApp(message: 'السلام عليكم شيخنا',phone:962781497808);
                      },
                      leading: Icon(Icons.phone,color: Colors.green,),
                    ),
                  ],
                ),
                ListTile(
                  title: Text(
                    LOGOUT,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.05
                    ),
                  ),
                  //shape: UnderlineInputBorder(),
                  trailing: Icon(Icons.logout,color: Color(HEX_BLUE_COLOR),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
