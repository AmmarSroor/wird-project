import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/input_data_cubit/input_data_cubit.dart';

class BuildInputDataWatch extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  BuildInputDataWatch({
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

          inputController.text=cubit.getCountWatch.toString();

          return Container(
            width: screenWidth,
            height: screenHeight,
            decoration: BoxDecoration(
              color: Color(HEX_LIGHT_WHITE_COLOR),
              border: Border.all(width: 1, color: Color(HEX_GREY_COLOR)),
              boxShadow: [const BoxShadow(
                color: Colors.black26,
                blurRadius: 6, offset: Offset(0, 1),),
              ],
            ),
            child: Stack(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              PROGRAM_NAME,
                              style: TextStyle(
                                  color: Color(HEX_BLUE_COLOR),
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.025,
                            ),
                            Container(
                              width: screenWidth * 0.75,
                              height: screenHeight * 0.15,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.5, color: Color(HEX_BLUE_COLOR)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  textAlignVertical:TextAlignVertical.center,
                                  keyboardType: TextInputType.text,
                                  onTap: () {},
                                ),
                              ),
                            ),
                          ],),
                      ),
                      SizedBox(
                        height: screenHeight * 0.025,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              EPISODE_NUMBER,
                              style: TextStyle(
                                  color: Color(HEX_BLUE_COLOR),
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.025,
                            ),
                            Container(
                              width: screenWidth * 0.75,
                              height: screenHeight * 0.15,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.5, color: Color(HEX_BLUE_COLOR)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  textAlignVertical:TextAlignVertical.center,
                                  keyboardType: TextInputType.text,
                                  onTap: () {},
                                ),
                              ),
                            ),
                          ],),
                      ),
                      SizedBox(
                        height: screenHeight * 0.025,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              WATCHING_TIME,
                              style: TextStyle(
                                  color: Color(HEX_BLUE_COLOR),
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  width: screenWidth * 0.2,
                                  height: screenHeight * 0.15,
                                  decoration: BoxDecoration(
                                    color: Color(HEX_BLUE_COLOR),
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(10.0),
                                        bottomRight: Radius.circular(10.0)),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      cubit.plusWatch();
                                      print(cubit.getCountWatch);
                                    },
                                    icon: Icon(Icons.add),
                                    color: Color(HEX_LIGHT_WHITE_COLOR),
                                    iconSize: screenWidth*0.06,
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.35,
                                  height: screenHeight * 0.15,
                                  decoration: BoxDecoration(
                                    border: Border.all(width: 0.5,
                                        color: Color(HEX_BLUE_COLOR)),
                                  ),
                                  child: TextFormField(
                                    controller: inputController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: MINUTES,
                                    ),
                                    textAlignVertical: TextAlignVertical.bottom,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    onTap: () {},
                                    onChanged: (currentInput){
                                      cubit.setCountWatch = int.parse(currentInput);
                                    },
                                  ),
                                ),
                                Container(
                                  width: screenWidth * 0.2,
                                  height: screenHeight * 0.15,
                                  decoration: BoxDecoration(
                                    color: Color(HEX_RED_COLOR),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        bottomLeft: Radius.circular(10.0)),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      cubit.minusWatch();
                                      print(cubit.getCountWatch);
                                    },
                                    icon: Icon(Icons.remove),
                                    color: Color(HEX_LIGHT_WHITE_COLOR),
                                    iconSize: screenWidth*0.06,
                                  ),
                                ),
                              ],
                            ),
                          ],),
                      ),
                      SizedBox(
                        height: screenHeight * 0.025,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              LINK_PROGRAM,
                              style: TextStyle(
                                  color: Color(HEX_BLUE_COLOR),
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(
                              width: screenWidth * 0.025,
                            ),
                            Container(
                              width: screenWidth * 0.75,
                              height: screenHeight * 0.15,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 0.5, color: Color(HEX_BLUE_COLOR)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                  ),
                                  textAlignVertical:TextAlignVertical.center,
                                  keyboardType: TextInputType.text,
                                  onTap: () {},
                                ),
                              ),
                            ),
                          ],),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "قراءة كتاب",
                    style: TextStyle(
                        color: Color(HEX_BLUE_COLOR),
                        fontSize: screenWidth * 0.065,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }
}