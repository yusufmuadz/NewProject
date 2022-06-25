// @dart=2.9

import 'package:flutter/material.dart';
import 'package:semesta/Absen/absen.dart';
import 'package:semesta/Chat/chat.dart';
import 'package:semesta/beranda.dart';
import 'package:semesta/profile.dart';

class Kehadiran extends StatefulWidget {
  Kehadiran({this.alfa, this.izin, this.terlambat});
  bool alfa = true, izin = false, terlambat = false;
  @override
  State<Kehadiran> createState() => _KehadiranState();
}

class _KehadiranState extends State<Kehadiran> {
  // bool _presensi = true, _izin = false, _cuti = false;
  final _formKey = GlobalKey<FormState>();
  _alasan() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Center(
              child: Form(
                  key: _formKey,
                  child: AlertDialog(
                      contentPadding: EdgeInsets.zero,
                      insetPadding: EdgeInsets.only(right: 20, left: 20),
                      content: SingleChildScrollView(
                        child: Container(
                          // height: 252,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), color: Colors.white),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Alasan Penolakan",
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.clear,
                                      size: 20,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                              Divider(
                                  thickness: 1,
                                  height: 20,
                                  color: Color(0xFFECEFF1)),
                              Container(
                                // height: 50,
                                margin: EdgeInsets.only(top: 10),
                                child: TextFormField(
                                  maxLines: null,
                                  minLines: 4,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 15),
                                    border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFFECEFF1))),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Color(0xFFECEFF1)),
                                        borderRadius: BorderRadius.circular(7)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 1, color: Color(0xFFECEFF1)),
                                        borderRadius: BorderRadius.circular(7)),
                                    // prefixText: 'https://'
                                  ),
                                ),
                              ),
                              Container(
                                  height: 35,
                                  width: 75,
                                  margin: EdgeInsets.only(top: 25),
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Color(0xFF63ADAE)),
                                  child: InkWell(
                                    onTap: () {},
                                    child: Text(
                                      "Simpan",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white),
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ))));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Text(''),
          leadingWidth: 20,
          actions: [
            Visibility(
                visible: widget.izin,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add, size: 30, color: Colors.black))),
            Visibility(
                visible: widget.terlambat,
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add, size: 30, color: Colors.black)))
          ],
          titleSpacing: 0,
          title: Text(
            "Daftar Kehadiran",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 19,
              fontWeight: FontWeight.w600,
            ),
          ),
          // centerTitle: true,
          elevation: 0.5,
        ),
        body: Container(
          padding: EdgeInsets.only(top: 5, bottom: 20, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3 - 14,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2,
                                color: widget.alfa
                                    ? Color.fromARGB(154, 69, 108, 251)
                                    : Colors.transparent))),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          widget.izin = false;
                          widget.alfa = true;
                          widget.terlambat = false;
                        });
                      },
                      child: Center(
                        child: Text(
                          "Alfa",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: widget.alfa
                                  ? Colors.black
                                  : Color.fromARGB(169, 171, 12, 115)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3 - 13,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2,
                                color: widget.izin
                                    ? Color.fromARGB(154, 69, 108, 251)
                                    : Colors.transparent))),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          widget.izin = true;
                          widget.alfa = false;
                          widget.terlambat = false;
                        });
                      },
                      child: Center(
                        child: Text(
                          "Izin",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: widget.izin
                                  ? Colors.black
                                  : Color.fromARGB(169, 171, 12, 115)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 3 - 13,
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 2,
                                color: widget.terlambat
                                    ? Color.fromARGB(154, 69, 108, 251)
                                    : Colors.transparent))),
                    child: MaterialButton(
                      onPressed: () {
                        setState(() {
                          widget.izin = false;
                          widget.alfa = false;
                          widget.terlambat = true;
                        });
                      },
                      child: Center(
                        child: Text(
                          "Terlambat",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: widget.terlambat
                                  ? Colors.black
                                  : Color.fromARGB(169, 171, 12, 115)),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Visibility(
                  visible: widget.alfa,
                  child: Container(
                      height: MediaQuery.of(context).size.height - 170,
                      child: ListView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                                // height: 241,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xFFECEFF1)),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Safitri Putri",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Spacer(),
                                          Text(
                                            "-10",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "Rekayasa Perangkat Lunak",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF909090)),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              "8 January 2022",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              "Senin",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ])
                                    ]));
                          }))),
              Visibility(
                  visible: widget.izin,
                  child: Container(
                      height: MediaQuery.of(context).size.height - 170,
                      child: ListView.builder(
                          itemCount: 3,
                          shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                                // height: 320,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(15),
                                margin: EdgeInsets.only(top: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 1, color: Color(0xFFECEFF1)),
                                    borderRadius: BorderRadius.circular(7)),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "Izin Mau Healing",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Spacer(),
                                          Text(
                                            "-1",
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.w400,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                      Divider(
                                        thickness: 1,
                                        height: 20,
                                      ),
                                      Text(
                                        "Jumlah Izin",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF909090)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "9 Hari",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Waktu",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF909090)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        "2 Januari 2022 - 11 Januari 2022",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                      Text(
                                        "Keterangan",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF909090)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("Healing",
                                          style: TextStyle(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w400))
                                    ]));
                          }))),
              Visibility(
                  visible: widget.terlambat,
                  child: Container(
                      height: MediaQuery.of(context).size.height - 170,
                      child: ListView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          // physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                              // height: 326,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(15),
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Color(0xFFECEFF1)),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Terlambat",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "Ban Bocor",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1,
                                    height: 20,
                                  ),
                                  Text(
                                    "Waktu",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF909090)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "07.00 - 09.00",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Text(
                                    "Keterangan",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF909090)),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    "Ban Bocor",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400)
                                  )
                                ]
                              )
                            );
                          })))
            ]
          )
        ),
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
                          onTap: () {},
                          child: Column(
                            children: [
                              Icon(Icons.library_add_check,
                                  size: 30,
                                  color: Color.fromARGB(169, 171, 12, 115)),
                              Text('Kehadiran',
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Color.fromARGB(169, 171, 12, 115)))
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
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Chat()));
                              },
                              child: Column(children: [
                                Icon(Icons.chat_outlined,
                                    size: 30,
                                    color: Color.fromARGB(154, 69, 108, 251)),
                                Text('Chat',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(154, 69, 108, 251)))
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
                    ]))));
  }
}
