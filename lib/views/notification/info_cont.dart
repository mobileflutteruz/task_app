

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoContainer extends StatelessWidget {
  final String text =
      'Hujjatlar http://qabul2024-litsey.tsul.uz platformasi orqali 2024-yil 25-iyundan 5-iyul (shu kuni ham)ga qadar qabul qilinadi.';

  void _launchURL() async {
    const url = 'http://qabul2024-litsey.tsul.uz';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Color(0xFFEDEFF1), // Background color similar to the screenshot

      ),
      child: Row(
        children: [
          Container(
            height: MediaQuery.sizeOf(context).height * .1,
            // padding: EdgeInsets.only(right: 10),
            width: 5,
            color: Color(0xff6B4EFF),
          ),
          SizedBox(width: 10,),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontSize: 16),
                children: [
                  TextSpan(text: 'Hujjatlar '),
                  TextSpan(
                    text: 'http://qabul2024-litsey.tsul.uz',
                    style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()..onTap = _launchURL,
                  ),
                  TextSpan(
                    text:
                    ' platformasi orqali 2024-yil 25-iyundan 5-iyul (shu kuni ham)ga qadar qabul qilinadi.',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}