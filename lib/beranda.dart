import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:semesta/Chat/chat.dart';
import 'package:semesta/Kehadiran/kehadiran.dart';

class Beranda extends StatefulWidget {
  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: Duration(seconds: 1), vsync: this)
        ..repeat(reverse: true);
  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.ease);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        body: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 20),
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                        height: 150,
                        // margin: EdgeInsets.only(top: 30, bottom: 20, right: 20, left: 20),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                              Color.fromARGB(169, 171, 12, 115),
                              Color.fromARGB(154, 69, 108, 251),
                            ])))),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          // padding: EdgeInsets.only(right: 15, left: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                height: 75,
                                width: 75,
                                // margin: EdgeInsets.only(top: 20),
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/image/Rectangle132.png'))),
                              ),
                              SizedBox(width: 10),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Safitri Putri",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white)),
                                  SizedBox(height: 5),
                                  Text("Kelas 10",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w400,
                                          color: Colors.white)),
                                  SizedBox(height: 2.5),
                                  Text("Rekayasa Perangkat Lunak",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white))
                                ],
                              ),
                              Spacer(),
                              Stack(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        // Navigator.push(context, MaterialPageRoute(builder: (_) => Notifikasi()));
                                      },
                                      child: Icon(Icons.notifications_none,
                                          color: Colors.white)),
                                  Positioned(
                                      right: 2,
                                      child: ScaleTransition(
                                          scale: _animation,
                                          child: Container(
                                              height: 10,
                                              width: 10,
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  border: Border.all(
                                                      width: 1,
                                                      color: Color(0xFF005E51)),
                                                  color: Color(0xFFFF4B4B)))))
                                ],
                              )
                            ],
                          )),
                      SizedBox(height: 50),
                      Text("Kehadiran",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600)),
                      Container(
                          // height: 100,
                          margin: EdgeInsets.only(top: 15),
                          padding: EdgeInsets.only(
                              top: 20, bottom: 20, right: 40, left: 40),
                          decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1, color: Color(0xFFE1E1E1)),
                              borderRadius: BorderRadius.circular(7)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width/3-47,
                                child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("2",
                                      // textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Alpa",
                                      // textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ]
                              )),
                              Container(
                                width: MediaQuery.of(context).size.width/3-47,
                                child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("3",
                                      // textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Izin",
                                      // textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold)),
                                ]
                              )),
                              Container(
                                width: MediaQuery.of(context).size.width/3-47,
                                child:
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("2",
                                      // textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500)),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text("Terlambat",
                                      // textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ]
                              ))
                            ],
                          )),
                      SizedBox(height: 15),
                      Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                            Text('Daftar Tugas',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            InkWell(
                                onTap: () {},
                                child: Text('Lihat Semua',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF0C68AB))))
                          ])),
                      SizedBox(height: 10),
                      ListView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                                margin: EdgeInsets.only(right: 10, left: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text("PKN",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500)),
                                        InkWell(
                                            onTap: () {},
                                            child: Icon(Icons.article,
                                                size: 25,
                                                color: Color(0xFFFF2C00)))
                                      ],
                                    ),
                                    Divider(
                                        thickness: 1,
                                        height: 25,
                                        color: index == 2 - 1
                                            ? Colors.transparent
                                            : Color(0xFFECEFF1))
                                  ],
                                ));
                          }),
                      // SizedBox(height: 15),
                      Container(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                            Text('Daftar Guru',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600)),
                            InkWell(
                                onTap: () {},
                                child: Text('Lihat Semua',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF0C68AB))))
                          ])),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Color(0xFFECEFF1))),
                            child: Text("Nama",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600)),
                          ),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width / 2 - 25,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Color(0xFFECEFF1))),
                            child: Text("Peran",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600)),
                          )
                        ],
                      ),
                      SizedBox(height: 10),
                      ListView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Container(
                                margin: EdgeInsets.only(right: 10, left: 10),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2 -
                                                30,
                                            child: Text("Ahmad Syam",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF8A8A8A)))),
                                        Container(
                                            width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    2 -
                                                30,
                                            child: Text("Kepala Sekolah",
                                                style: TextStyle(
                                                    fontSize: 17,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xFF8A8A8A))))
                                      ],
                                    ),
                                    Divider(
                                        thickness: 1,
                                        height: 25,
                                        color: index == 2 - 1
                                            ? Colors.transparent
                                            : Color(0xFFECEFF1))
                                  ],
                                ));
                          }),
                    ],
                  ),
                ),
              ],
            )),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBody: true,
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (_) => Presensi()));
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
                          onTap: () {},
                          child: Column(
                            children: [
                              Icon(Icons.home,
                                  size: 30,
                                  color: Color.fromARGB(169, 171, 12, 115)),
                              Text('Home',
                                  style: TextStyle(
                                      color: Color.fromARGB(169, 171, 12, 115)))
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 60,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Kehadiran(
                                        alfa: true,
                                        izin: false,
                                        terlambat: false)));
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
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
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
