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
                      "عدد الصفحات",
                      style: TextStyle(
                        color: Color(HEX_BLUE_COLOR),
                        fontSize: screenWidth*0.04,
                        //fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(
                      height:screenHeight*0.02,
                    ),
                    Container(
                      width: screenWidth*0.3,
                      height:screenHeight*0.2 ,
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.5,color: Color(HEX_BLUE_COLOR)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: TextFormField(
                          decoration:InputDecoration(
                            border: InputBorder.none,
                            hintText: MINUTES,
                            hintStyle: TextStyle(fontSize: screenWidth*0.065)
                          ),
                          controller: inputController,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          onTap:(){},
                          onChanged: (currentInput){
                            cubit.setCount = int.parse(currentInput);
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height:screenHeight*0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: screenWidth*0.24,
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
                        ),
                        SizedBox(
                          width:screenWidth*0.025,
                        ),
                        Container(
                          width: screenWidth*0.24,
                          height:screenHeight*0.18,
                          decoration: BoxDecoration(
                            color: Color(HEX_ORANGE_COLOR),
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
                        ),
                      ],),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "اسم المسابقة",
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
}
