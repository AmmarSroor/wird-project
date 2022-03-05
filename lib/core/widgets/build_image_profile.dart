import 'dart:io';

import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';
class BuildImageProfile extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  BuildImageProfile({required this.screenWidth,required this.screenHeight,});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        HomePageCubit.get(context).openGallery(context);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: AccountCubit.get(context).imageFile != null
            ? Image.file(
          File(AccountCubit.get(context).imageFile!.path),
          width: screenWidth * 0.31,
          height: screenWidth * 0.31,
          fit: BoxFit.fitWidth,
        )
            : Icon(Icons.person,size: screenWidth * 0.27,),
      ),
    );
  }
}
