// @dart=2.9

import 'package:flutter/material.dart';
import 'package:semesta/Absen/absen.dart';
import 'package:semesta/Chat/detail.dart';
import 'package:semesta/Kehadiran/kehadiran.dart';
import 'package:semesta/beranda.dart';
import 'package:semesta/profile.dart';

class Chat extends StatefulWidget {
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(''),
        leadingWidth: 20,
        title: Text(
          "Chat",
          style: TextStyle(
              fontFamily: "poppins", fontSize: 19, fontWeight: FontWeight.w600),
        ),
        elevation: 0.5,
      ),
      body: ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          padding: EdgeInsets.all(20),
          itemBuilder: (context, index) {
            return Container(
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => DetailChat()));
                },
                child: Row(
                  children: [
                    Stack(
                      children: [
                        Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/image/Rectangle132.png')))
                ),
                      ],
                    ),
                SizedBox(width: 10),
                    Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
          "Bu Guru",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 5),
        Container(
          width: MediaQuery.of(context).size.width-166,
          child:
        Text(
          "Ok, thanks tom i’m appreciate that",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF898989)),
        ))
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
          "11:20 AM",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF898989)),
        ),
        SizedBox(height: 10),
        Text(
          "",
          style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Color(0xFF898989)),
        )
                  ],
                )
                  ],
                )
              ),
            );
          }),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBody: true,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => Absen()));
            },
            elevation: 0,
            child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // border: Border.all(width: 2, color: Color(0xFFECEFF1)),
                    gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: <Color>[
                        Color(0xFF0C68AB),
                        Color(0xFF45AEFB),
                      ],
                      tileMode: TileMode.repeated,
                    )),
                child: Icon(Icons.how_to_reg_sharp,
                    size: 35, color: Colors.white)),
            tooltip: 'Absen'),
        bottomNavigationBar: BottomAppBar(
            child: Container(
                height: 61,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(5),
                margin: EdgeInsets.only(right: 10, left: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        width: 60,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Beranda()));
                          },
                          child: Column(
                            children: [
                              Icon(Icons.home_outlined,
                                  size: 30,
                                  color: Color.fromARGB(154, 69, 108, 251)),
                              Text('Home',
                                  style: TextStyle(
                                      color: Color.fromARGB(154, 69, 108, 251)))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        child: InkWell(
                          onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Kehadiran(alfa: true, izin: false, terlambat: false)));
                          },
                          child: Column(
                            children: [
                              Icon(Icons.library_add_check_outlined,
                                  size: 30,
                                  color: Color.fromARGB(154, 69, 108, 251)),
                              Text('Kehadiran',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Color.fromARGB(154, 69, 108, 251)))
                            ],
                          ),
                        ),
                      ),
                      Container(
                          width: 60,
                          margin: EdgeInsets.only(top: 30),
                          child: Text('Absen',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color.fromARGB(154, 69, 108, 251)))),
                      Container(
                          width: 60,
                          child: InkWell(
                              onTap: () {},
                              child: Column(children: [
                                Icon(Icons.chat,
                                    size: 30,
                                    color: Color.fromARGB(169, 171, 12, 115)),
                                Text('Chat',
                                    style: TextStyle(
                                        color: Color.fromARGB(169, 171, 12, 115)))
                              ]))),
                      Container(
                          width: 60,
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                              },
                              child: Column(children: [
                                Icon(Icons.person_outline,
                                    size: 30,
                                    color: Color.fromARGB(154, 69, 108, 251)),
                                Text('Profile',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(154, 69, 108, 251)))
                              ])))
                    ])))
    );
  }
}
