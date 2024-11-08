

import 'package:flutter/material.dart';

import 'notification/notification_page.dart';

class HomePage extends StatelessWidget {


  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Home", style: TextStyle(),),
        backgroundColor: Colors.white,
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () => {
              Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()))
              },
              child: Image.asset("assets/icons/bell.png"),
            ),
          ),
        ],
        elevation: 0,
        scrolledUnderElevation: 0,
      ),

    );


  }
}
