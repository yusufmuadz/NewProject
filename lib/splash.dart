// @dart=2.9

import 'package:flutter/material.dart';
import 'package:semesta/login.dart';

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(Duration(seconds: 2), () => Navigator.push(context, MaterialPageRoute(builder: (_) => Login())));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(154, 69, 108, 251),
              Color.fromARGB(169, 171, 12, 115),
            ])
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.calendar_month, size: 130, color: Colors.white),
            SizedBox(height: 10),
            Text("CHEATT", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold, letterSpacing: 1, color: Colors.white))
          ]
        )
      ),
      Positioned(
              bottom: 20,
              right: 0,
              left: 0,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Versi 2022.01.01",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400, color: Colors.white)
                )
              ))
        ]
      )
    );
  }
}