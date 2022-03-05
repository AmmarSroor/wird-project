import 'package:flutter/material.dart';
import 'dart:io';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_button.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_cusom_text_span.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_image_profile.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_logo_message.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';
import 'package:ramadan_cmpetitions/screens/home_page/pages/main_page.dart';
import 'package:ramadan_cmpetitions/screens/login_and_register/widgets/build_custom_text_field.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_drop_down_competition_list.dart';
class RegisterPage extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  RegisterPage({
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
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
              child: RichText(
                text: TextSpan(children: [
                  buildTextSpan(text: JOIN_COMPETITION,hexColor: HEX_RED_COLOR,screenWidth: screenWidth),
                  buildTextSpan(text: WIRD,hexColor: HEX_BLUE_COLOR,screenWidth: screenWidth),
                  buildTextSpan(text: NOW,hexColor: HEX_RED_COLOR,screenWidth: screenWidth),
                ]),
              ),
            ),
            BuildCustomTextField(
              hint: FULL_NAME,
              screenWidth: screenWidth,
              prefixIcon: Icons.person,
              hasSuffixIcon: false,
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
            BuildCustomTextField(
              hint: CONFIRM_PASSWORD,
              screenWidth: screenWidth,
              prefixIcon: Icons.lock,
              hasSuffixIcon: true,
            ),
            DropDownCompetitionList(screenWidth: screenWidth,select: SELECT_COMPETITION_NAME,color: HEX_RED_COLOR, screenHeight: screenHeight,),
            SizedBox(
              height: screenHeight * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  child: Directionality(
                    textDirection: TextDirection.ltr,
                    child: ElevatedButton.icon(
                      onPressed: () async{
                        await _openGallery(context);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(HEX_BLUE_COLOR)),
                      ),
                      icon: Icon(Icons.photo_camera),
                      label: Text('صورة شخصية'),
                    ),
                  ),
                ),
                if(AccountCubit.get(context).imageFile != null)
                  BuildImageProfile(screenWidth: screenWidth,screenHeight: screenHeight,),
              ],
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            BuildButton(
              screenWidth: screenWidth ,
              screenHeight: screenHeight + screenHeight*0.3,
              hexColor: HEX_LIGHT_BLUE_COLOR,
              text: CREATE_ACCOUNT,
              routeName: MainPage.routeName,
            ),
            SizedBox(
              height: screenHeight * 0.04,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: screenWidth * 0.05),
              child: BuildLogoMessage(
                screenWidth: screenWidth, screenHeight: screenHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
  Future<void> _openGallery(BuildContext context) async{
    final image = await ImagePicker().pickImage(
      source: ImageSource.gallery ,
    );
    AccountCubit.get(context).setImageFile = image!;
  }
}
