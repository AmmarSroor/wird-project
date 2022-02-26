import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';

class BuildSwitchButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: AccountCubit.get(context).isLoginSaved,
      controlAffinity: ListTileControlAffinity.leading,
      activeColor: Color(HEX_BLUE_COLOR),
      title: Text(
        REMEMBERED_PASSWORD,
        style: TextStyle(
          color: Color(HEX_ORANGE_COLOR),
        ),
      ),
      onChanged: (switchValue){
        AccountCubit.get(context).changeLoginSaved = switchValue;
      },
    );
  }
}
