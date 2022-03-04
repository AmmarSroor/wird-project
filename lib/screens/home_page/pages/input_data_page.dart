import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/core/widgets/build_drop_down_competition_list.dart';
import 'package:ramadan_cmpetitions/dio_helper.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_input_data_checkbox.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_input_data_points.dart';
import 'package:ramadan_cmpetitions/screens/home_page/widgets/build_input_data_watch.dart';

class InputDataPage extends StatelessWidget {
  static String routeName = 'NewDataPageRouteName';
  double? screenWidth;
  double? screenHeight;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    List<Widget> inputDataItems=[
      BuildInputDataPoints(screenHeight:screenHeight!*0.30,screenWidth:screenWidth!*0.8),
      BuildInputDataCheckBox(screenHeight:screenHeight!*0.1,screenWidth:screenWidth!*0.8),
      BuildInputDataWatch(screenHeight:screenHeight!*0.40,screenWidth:screenWidth!*0.8),
      BuildInputDataPoints(screenHeight:screenHeight!*0.30,screenWidth:screenWidth!*0.8),
      BuildInputDataCheckBox(screenHeight:screenHeight!*0.12,screenWidth:screenWidth!*0.8),
      BuildInputDataWatch(screenHeight:screenHeight!*0.40,screenWidth:screenWidth!*0.8),
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height:screenHeight!*0.025 ,),
              Text('اسم المسابقة',style: TextStyle(color: Color(HEX_BLUE_COLOR),fontSize:screenWidth! *0.075 ,fontWeight: FontWeight.bold),),
              SizedBox(height:screenHeight!*0.005 ,),
              DropDownCompetitionList(
                screenWidth: screenWidth! * 0.6,
                color: HEX_BLUE_COLOR,
                select: SELECT_DAY_FROM_RAMADAN,
              ),
              SizedBox(height:screenHeight!*0.025 ,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder:(context, index) => inputDataItems[index],
                  separatorBuilder:(context, index) =>  SizedBox(height:screenHeight!*0.025 ,),
                  itemCount: inputDataItems.length,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton:FloatingActionButton.extended(
        onPressed:() {
          DioHelper.postData(
              path:"token/",
              data: {
                  'username':'maree',
                  'password':'maree1999',
              }
          ).then((value){
            token=value.data['access'];
            print(value.data['access']);
            print("true");
          }).catchError((onError){
            print(onError.toString());
            print("false");
          });
        },
        backgroundColor:Color(HEX_BLUE_COLOR),
        foregroundColor:Color(HEX_LIGHT_WHITE_COLOR),
        label:Text('حفظ'),
        icon: Icon(Icons.save_alt),
        //   shape: RoundedRectangleBorder(
        //     borderRadius: BorderRadius.circular(15.0),
        //   ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}

