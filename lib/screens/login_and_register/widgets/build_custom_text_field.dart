import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/cubit/login_and_register_cubit/account_cubit.dart';

class BuildCustomTextField extends StatelessWidget {
  final double screenWidth;
  final IconData prefixIcon;
  final String hint;
  final bool hasSuffixIcon;
  BuildCustomTextField({
    required this.screenWidth,
    required this.prefixIcon,
    required this.hint,
    required this.hasSuffixIcon,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: screenWidth * 0.04),
      child: SizedBox(
        width: screenWidth * 0.85,
        child: Card(
          elevation: 15,
          child: TextField(
            obscureText: hasSuffixIcon ? AccountCubit.get(context).hidePasswordValue : false,
            inputFormatters: [
              LengthLimitingTextInputFormatter(20),
            ],
            decoration: InputDecoration(
              prefixIcon: Icon(
                prefixIcon,
                color: Color(HEX_BLUE_COLOR),
              ),
              suffixIcon: hasSuffixIcon
                  ? IconButton(
                    icon: Icon(
                      AccountCubit.get(context).hidePasswordValue
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: AccountCubit.get(context).hidePasswordValue
                          ? Color(HEX_BLUE_COLOR)
                          : Colors.grey,
                    ),
                    onPressed: (){
                      AccountCubit.get(context).changeHidePassword();
                    },
                    color: Color(HEX_BLUE_COLOR),
                  ) : null,
              filled: true,
              border: InputBorder.none,
              fillColor: Colors.white,
              hintText: hint,
              hintStyle: TextStyle(
                  color: Color(HEX_ORANGE_COLOR).withOpacity(0.7)
              ),
            ),
          ),
        ),
      ),
    );
  }
}
