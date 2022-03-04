import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/cubit/input_data_cubit/input_data_cubit.dart';

class BuildInputDataCheckBox extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  BuildInputDataCheckBox({
    required this.screenHeight,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<InputDataCubit, InputDataState>(
        listener: (context, state) {},
        builder: (context, state) {

          var cubit = InputDataCubit.get(context);

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
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "غسل الجمعة",
                        style: TextStyle(
                            color: Color(HEX_BLUE_COLOR),
                            fontSize: screenWidth*0.065,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      child: Checkbox(
                        value: cubit.getCheck,
                        onChanged:(value){
                          cubit.switchCheck();
                        },
                        activeColor: Color(HEX_BLUE_COLOR),
                        overlayColor:MaterialStateProperty.all(Color(HEX_LIGHT_WHITE_COLOR)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
}