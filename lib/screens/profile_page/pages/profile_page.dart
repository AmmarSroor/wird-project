import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_moon_logo.dart';
import 'package:ramadan_cmpetitions/screens/profile_page/widgets/build_text_form_field.dart';

class ProfilePage extends StatelessWidget {
  static String routeName = 'ProfilePageRouteName';
  double? screenWidth;
  double? screenHeight;

  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var userNameController = TextEditingController();
  var centerNameController = TextEditingController();
  var contestNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    final AppBar _appBar = AppBar(
      toolbarHeight: screenHeight! * 0.15,
      backgroundColor: Color(HEX_BLUE_COLOR),
      actions: [
        Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: BuildMoonLogo(
              width: screenWidth! * 0.18,
              height: screenHeight! * 0.1,
            ),
          ),
        ),
      ],
      // automaticallyImplyLeading: false,
      title: Text(PROFILE,style: TextStyle(fontSize: screenWidth!*0.06),),
      centerTitle: true,
      leadingWidth: 60,
    );
    return  SafeArea(
      child: Scaffold(
          appBar:_appBar,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 12.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(height: screenHeight!*0.05,),
                    Container(
                      width: screenWidth!*0.35,
                      height: screenWidth!*0.35,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.orangeAccent,
                          ),
                          borderRadius: BorderRadius.circular(200)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.asset(
                          'assets/images/profile_image_test.PNG',
                          width: screenWidth! * 0.36,
                          height: screenHeight! * 0.23,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'الاسم الثنائي',
                          style: TextStyle(
                              color: Color(HEX_BLUE_COLOR),
                              fontSize: screenWidth! * 0.052,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        BuildTextFormField(
                          screenWidth:screenWidth! * 0.58,
                          screenHeight:screenHeight! * 0.075,
                          controller:nameController,
                        )
                      ],
                    ),
                    SizedBox(height: screenHeight!*0.05,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'اسم المستخدم',
                          style: TextStyle(
                              color: Color(HEX_BLUE_COLOR),
                              fontSize: screenWidth! * 0.052,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        BuildTextFormField(
                          screenWidth:screenWidth! * 0.58,
                          screenHeight:screenHeight! * 0.075,
                          controller:userNameController,
                        )
                      ],
                    ),
                    SizedBox(height: screenHeight!*0.05,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'اسم المركز',
                          style: TextStyle(
                              color: Color(HEX_BLUE_COLOR),
                              fontSize: screenWidth! * 0.052,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        BuildTextFormField(
                          screenWidth:screenWidth! * 0.58,
                          screenHeight:screenHeight! * 0.075,
                          controller:centerNameController,
                        )
                      ],
                    ),
                    SizedBox(height: screenHeight!*0.05,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'اسم المسابقة',
                          style: TextStyle(
                              color: Color(HEX_BLUE_COLOR),
                              fontSize: screenWidth! * 0.052,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        BuildTextFormField(
                          screenWidth:screenWidth! * 0.58,
                          screenHeight:screenHeight! * 0.075,
                          controller:contestNameController,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
      ),
    );
  }
}

//Navigator.of(context).pushNamed(routeName);