import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';

class InputDataPage extends StatelessWidget {
  static String routeName = 'NewDataPageRouteName';
  double? screenWidth;
  double? screenHeight;
  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height:screenHeight!*0.025 ,),
            Text('تاريخ اليوم',style: TextStyle(color: Color(HEX_BLUE_COLOR),fontSize:screenWidth! *0.05 ,fontWeight: FontWeight.bold),),
            SizedBox(height:screenHeight!*0.025 ,),
            Text('اسم المسابقة',style: TextStyle(color: Color(HEX_BLUE_COLOR),fontSize:screenWidth! *0.075 ,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
      floatingActionButton:FloatingActionButton.extended(
        onPressed:() {},
        backgroundColor:Color(HEX_BLUE_COLOR),
        foregroundColor:Color(HEX_LIGHT_WHITE_COLOR),
        label:Text('حفظ المعلومات'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}