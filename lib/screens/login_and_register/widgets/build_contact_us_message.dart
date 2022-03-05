import 'package:flutter/material.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/core/resources/strings.dart';
import 'package:url_launcher/url_launcher.dart';
class ContactUsMessage extends StatelessWidget {
  void launchWhatsApp({required int phone,required String message,}) async {
    String url = "https://api.whatsapp.com/send?phone=$phone&text=$message";
    await launch(url);
  }
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
              launchWhatsApp(phone: 962781497808,message: 'السلام عليكم،\n\n شيخنا نسيت كلمة السر، ممكن تساعدني ؟');
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
