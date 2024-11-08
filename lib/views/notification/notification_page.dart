import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

import 'notif_data.dart';
import 'notif_detail_page.dart';

class NotificationPage extends StatelessWidget {
  NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
          title: const Text(
            'Notification',
            style: TextStyle(color: Colors.black),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Colors.orange),
          )),
      body: ListView.builder(
        padding: const EdgeInsets.all(8.0),
        itemCount: courseList.length, // Notification count
        itemBuilder: (context, index) {
          return GestureDetector(
            // onTap: () => _showDetailsDialog(context),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => const NotificationDetailPage()));
            },

            child: Container(
              width: double.infinity,
              height: 106,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(12)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.only(left: 16, right: 16, ),
                    decoration: ShapeDecoration(
                      color: Color(0xffDFDFDF),
                      image: DecorationImage(

                          image: AssetImage(
                            'assets/image/image.png',

                            // fit: BoxFit.cover,
                          ),
                          fit: BoxFit.cover),
                      shape: RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(courseList[index].title,style: TextStyle(
                          color: Color(0xFF090A0A),
                          fontSize: 18,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w700,

                        ),),
                        Text('${courseList[index].subtitle}\n${courseList[index].description}', style: TextStyle(
                          color: Color(0xFF303437),
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w400,

                        ),),
                      ],
                    ),
                  ),
                ],
              ),

              // child: ListTile(
              //   leading: Container(
              //     width: 80,
              //     height: 80,
              //     // margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
              //     decoration: ShapeDecoration(
              //       color: Color(0xffDFDFDF),
              //       image: DecorationImage(
              //         image: AssetImage(
              //           'assets/image/image.png',
              //           // fit: BoxFit.cover,
              //         ),
              //         fit: BoxFit.cover
              //       ),
              //       shape: RoundedRectangleBorder(
              //         side: BorderSide(width: 1, color: Color(0xFFDFDFDF)),
              //         borderRadius: BorderRadius.circular(8),
              //       ),
              //     ),
              //   ),
              //   title:  Text(courseList[index].title, style: TextStyle(fontWeight: FontWeight.bold)),
              //   subtitle:  Text('${courseList[index].subtitle}\n${courseList[index].description}'),
            ),
          );
        },
      ),
    );
  }
}
