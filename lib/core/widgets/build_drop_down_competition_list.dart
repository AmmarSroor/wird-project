import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/constants.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';
class DropDownCompetitionList extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String select;
  final int color;
  DropDownCompetitionList({required this.screenWidth,required this.select,required this.color,required this.screenHeight});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenWidth * 0.04),
      child: SizedBox(
        width: screenWidth * 0.85,
        child: Card(
          elevation: 15,
          child: DropdownButtonFormField<int>(
            menuMaxHeight: screenHeight * 0.27,
            hint: FittedBox(
              child: Text(
                select,
                style: TextStyle(
                  color: Color(color).withOpacity(0.7),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            iconEnabledColor: Color(HEX_BLUE_COLOR),
            iconDisabledColor: Color(HEX_BLUE_COLOR),
            iconSize: screenWidth*0.08,
            isExpanded: true,
            decoration: InputDecoration(
              filled: true,

              border: InputBorder.none,
              fillColor: Colors.white,
            ),
            items: [
              ...days.map((item) => DropdownMenuItem(
                value: item,
                child: FittedBox(child: Text('$item رمضان')),
              ),).toList(),
            ],
            value: HomePageCubit.get(context).dropDownValue,
            onChanged: (currentValue){
              HomePageCubit.get(context).changeDropDownValue = currentValue!;
            },
          ),
        ),
      ),
    );
  }
}
