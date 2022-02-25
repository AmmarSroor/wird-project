import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';
class DropDownCompetitionList extends StatelessWidget {
  final double screenWidth;
  final String select;
  final int color;
  DropDownCompetitionList({required this.screenWidth,required this.select,required this.color});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenWidth * 0.04),
      child: SizedBox(
        width: screenWidth * 0.85,
        child: Card(
          elevation: 15,
          child: DropdownButtonFormField<String>(
            hint: Text(
              select,
              style: TextStyle(
                color: Color(color).withOpacity(0.7)
              ),
            ),
            iconEnabledColor: Color(HEX_BLUE_COLOR),
            iconDisabledColor: Color(HEX_BLUE_COLOR),
            iconSize: screenWidth*0.08,
            decoration: InputDecoration(
              filled: true,
              border: InputBorder.none,
              fillColor: Colors.white,
            ),
            items: [
              DropdownMenuItem(
                value: '8 رمضان',
                child: Text('8 رمضان'),
              ),
              DropdownMenuItem(
                value: '9 رمضان',
                child: Text('9 رمضان'),
              ),
            ],
            value: AccountCubit.get(context).dropDownValue,
            onChanged: (currentValue){
              AccountCubit.get(context).changeDropDownValue = currentValue!;
            },
          ),
        ),
      ),
    );
  }
}
