// @dart=2.9

import 'package:flutter/material.dart';
import 'package:semesta/Absen/absen.dart';
import 'package:semesta/Kehadiran/kehadiran.dart';
import '../beranda.dart';

class Profile extends StatefulWidget {
  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _simpan = false;
  final _formKey = GlobalKey<FormState>();
  final _name = TextEditingController(text: 'Safitri Putri'),
      _phoneNumber = TextEditingController(text: '08312321412512'),
      _email = TextEditingController(text: 'safitriputri@gmail.com');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20),
        child: Form(
          key: _formKey,
          child: Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/image/Rectangle132.png'))),
                child: InkWell(onTap: (){}),
              ),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 15),
                  alignment: Alignment.center,
                  child: Text(
                    "Safitri Putri",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
                  )),
              Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(top: 5),
                  alignment: Alignment.center,
                  child: Text(
                    "08312321412512",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                  )),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.person_outlined, size: 35, color: Colors.black),
                  SizedBox(width: 15),
                  Text(
                    "Profil",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  InkWell(
                      onTap: _simpan ?
                      () {
                        setState(() {
                          _simpan = false;
                        });
                      } : (){},
                      child: Text(
                        "Simpan",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: _simpan ? Color(0xFF248CF0) : Color(0xFF898989)),
                      ))
                ],
              ),
              Divider(thickness: 1, height: 30, color: Color(0xFFECEFF1)),
              Container(
                  padding: EdgeInsets.only(left: 55),
                  child: Text(
                    "Nama",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  )),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 55),
                child: TextFormField(
                  controller: _name,
                  decoration: InputDecoration(
                      // hintText: 'Search transaction',
                      // hintStyle: TextStyle(color: Color(0xFF898989)),
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFECEFF1))),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFECEFF1)),
                          borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFECEFF1)),
                          borderRadius: BorderRadius.circular(7))),
                  onTap: () {
                    setState(() {
                      _simpan = true;
                    });
                  }
                )
              ),
              Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(left: 55),
                  child: Text(
                    "Nomor Telepon",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  )),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 55),
                child: TextFormField(
                    controller: _phoneNumber,
                    decoration: InputDecoration(
                        // hintText: 'Search transaction',
                        // hintStyle: TextStyle(color: Color(0xFF898989)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFECEFF1))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xFFECEFF1)),
                            borderRadius: BorderRadius.circular(7)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xFFECEFF1)),
                            borderRadius: BorderRadius.circular(7))),
                            onTap: () {
                    setState(() {
                      _simpan = true;
                    });
                  })
              ),
              Container(
                  margin: EdgeInsets.only(top: 15),
                  padding: EdgeInsets.only(left: 55),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  )),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.only(left: 55),
                child: TextFormField(
                    controller: _email,
                    decoration: InputDecoration(
                        // hintText: 'Search transaction',
                        // hintStyle: TextStyle(color: Color(0xFF898989)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFFECEFF1))),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xFFECEFF1)),
                            borderRadius: BorderRadius.circular(7)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xFFECEFF1)),
                            borderRadius: BorderRadius.circular(7))),
                            onTap: () {
                    setState(() {
                      _simpan = true;
                    });
                  })
              ),
              Divider(thickness: 1, height: 30, color: Color(0xFFECEFF1)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(Icons.logout_outlined, size: 33, color: Colors.black),
                  SizedBox(width: 15),
                  Text(
                    "Log Out",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Divider(thickness: 1, height: 30, color: Color(0xFFECEFF1)),
            ],
          ),
        ),
      )),
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
                                Icon(Icons.chat_outlined,
                                    size: 30,
                                    color: Color.fromARGB(154, 69, 108, 251)),
                                Text('Chat',
                                    style: TextStyle(
                                        color: Color.fromARGB(154, 69, 108, 251)))
                              ]))),
                      Container(
                          width: 60,
                          child: InkWell(
                              onTap: () {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                              },
                              child: Column(children: [
                                Icon(Icons.person,
                                    size: 30,
                                    color: Color.fromARGB(169, 171, 12, 115)),
                                Text('Profile',
                                    style: TextStyle(
                                        color: Color.fromARGB(169, 171, 12, 115)))
                              ])))
                    ])))
    );
  }
}
