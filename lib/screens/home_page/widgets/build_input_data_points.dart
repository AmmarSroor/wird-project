import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/input_data_cubit/input_data_cubit.dart';

class BuildInputDataPoints extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildInputDataPoints({
    required this.screenHeight,
    required this.screenWidth,
  });

  var formKey = GlobalKey<FormState>();
  var inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InputDataCubit, InputDataState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = InputDataCubit.get(context);
          inputController.text=cubit.getCount.toString();
          return Container(
            width:screenWidth,
            height:screenHeight,
            decoration: BoxDecoration(
              color: Color(HEX_LIGHT_WHITE_COLOR),
              border: Border.all(width: 1,color: Color(HEX_GREY_COLOR)),
              boxShadow: [const BoxShadow(
                color: Colors.black26,
                blurRadius: 6, offset: Offset(0,1),),],
            ),
            child: Form(
              key:formKey ,
              child: Stack(
                children: [
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "عدد الركعات",
                          style: TextStyle(
                            color: Color(HEX_BLUE_COLOR),
                            fontSize: screenWidth*0.05,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height:screenHeight*0.1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            buildIncrementButton(cubit),
                            SizedBox(
                              width:screenWidth*0.025,
                            ),
                            Container(
                              width: screenWidth*0.24,
                              height:screenHeight*0.18 ,
                              child: TextFormField(
                                decoration:InputDecoration(
                                    border: InputBorder.none,
                                    hintText: MINUTES,
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        width: 0.5,color: Color(HEX_BLUE_COLOR),
                                      ),
                                    ),
                                    hintStyle: TextStyle(fontSize: screenWidth*0.065)
                                ),
                                controller: inputController,
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                onTap:(){},
                                onChanged: (currentInput){
                                  //cubit.setCount = int.parse(currentInput);
                                },
                              ),
                            ),
                            SizedBox(
                              width:screenWidth*0.025,
                            ),
                            buildDecrementButton(cubit),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "صلاة القيام",
                      style: TextStyle(
                          color: Color(HEX_BLUE_COLOR),
                          fontSize: screenWidth*0.065,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  Container buildDecrementButton(InputDataCubit cubit) {
    return Container(
                            width: screenWidth*0.15,
                            height:screenHeight*0.18,
                            decoration: BoxDecoration(
                              color: Color(HEX_RED_COLOR),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: (){
                                cubit.minus();
                              },
                              icon: Icon(Icons.remove),
                              color: Color(HEX_LIGHT_WHITE_COLOR),
                              iconSize: screenWidth*0.06,
                            ),
                          );
  }

  Container buildIncrementButton(InputDataCubit cubit) {
    return Container(
                            width: screenWidth*0.15,
                            height:screenHeight*0.18,
                            decoration: BoxDecoration(
                              color: Color(HEX_BLUE_COLOR),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: IconButton(
                              onPressed: (){
                                cubit.plus();
                              },
                              icon: Icon(Icons.add),
                              color: Color(HEX_LIGHT_WHITE_COLOR),
                              iconSize: screenWidth*0.06,
                            ),
                          );
  }
}
