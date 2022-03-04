import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
class ContactUsMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            DID_YOU_FORGET_PASSWORD,
            style: TextStyle(
              fontSize: 18,
              color: Color(HEX_RED_COLOR),
            ),
          ),
          InkWell(
            onTap: (){
              // TODO: connect with whatsApp
            },
            child: Text(
              CONTACT_US,
              style: TextStyle(
                fontSize: 18,
                color: Color(HEX_BLUE_COLOR),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
