// @dart=2.9

import 'dart:async';
import 'dart:io';

// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:semesta/Absen/ketAbsen.dart';
import 'package:semesta/Chat/chat.dart';
import 'package:semesta/Kehadiran/kehadiran.dart';
import 'package:semesta/beranda.dart';
import 'package:semesta/profile.dart';

class Absen extends StatefulWidget {
  @override
  State<Absen> createState() => AbsenState();
}

class AbsenState extends State<Absen> {
  Completer<GoogleMapController> _controller = Completer();
  File _image = null;
  String _time;
  String _formatTime(DateTime dateTime) {
    return DateFormat('HH:mm').format(dateTime);
  }

  void _getTime() {
    final DateTime now = DateTime.now();
    final String _formatTime2 = _formatTime(now);
    setState(() {
      _time = _formatTime2;
    });
  }

  void _getImage() async {
    PickedFile _pickedFile =
        await ImagePicker().getImage(source: ImageSource.camera);
    if (_pickedFile != null) {
      setState(() {
        _image = File(_image.path);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _time = _formatTime(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer timer) => _getTime());
    // _cameraController = CameraController(description, ResolutionPreset.medium)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text(''),
        title: Text(
          "Absen",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0.5,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              Container(
                height: 250,
                child: GoogleMap(
                  // layoutDirection: ,
                  myLocationButtonEnabled: true,
                  myLocationEnabled: true,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  initialCameraPosition: CameraPosition(
                      target: LatLng(-7.840957704544582, 110.38215292497871)),
                ),
              ),
              Container(
                height: 250,
                color: Color(0x7563ADAE),
              ),
              Positioned(
                  top: 0,
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "$_time",
                        style: TextStyle(
                            fontSize: 39,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      InkWell(
                          onTap: () {
                            _getImage();
                            Navigator.push(context, MaterialPageRoute(builder: (_) => KeteranganAbsen()));
                          },
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            margin:
                                EdgeInsets.only(top: 100, right: 20, left: 20),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.white),
                            child: Text(
                              "Absen",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          )),
                    ],
                  )),
            ]),
            SizedBox(height: 30),
                Container(
                  child: Text(
                        "Riwayat",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500)
                      )
                    ),
            Container(
                    height: MediaQuery.of(context).size.height - 425,
                    child: ListView.builder(
                        itemCount: 2,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return InkWell(
                            child: Container(
                              // height: 90,
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.all(10),
                              margin: EdgeInsets.only(top: 10),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Color(0xFFECEFF1)),
                                  borderRadius: BorderRadius.circular(7)),
                              child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: BoxDecoration(
                                          image: DecorationImage(image: AssetImage('asset/image/CLOCK_OUT_ICON.png'), fit: BoxFit.fill)
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "16:00",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(height: 3),
                                          Text(
                                            "03 Januari 2022",
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400,
                                                color: Color(0xFF909090))
                                          ),
                                          Container(
                                    width: 200,
                                      margin: EdgeInsets.only(top: 3),
                                      child: Text(
                                        "Alasan: Wajah tidak sesuai",
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        // textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: Color(0xFF909090)),
                                      ))
                                        ],
                                      ),
                                      // SizedBox(
                                      //     width: MediaQuery.of(context)
                                      //             .size
                                      //             .width-368),
                                      Spacer(),
                                                  Container(
                                                    height: 28,
                                                    // width: MediaQuery.of(context).size.width-343,
                                                    alignment: Alignment.centerRight,
                                                    // margin: EdgeInsets.only(top: 3),
                                                    child:
                Icon(Icons.clear, size: 23, color: Color(0xFFFF3F33))),
                                      Container(
                                        height: 28,
                                        alignment: Alignment.center,
                                        // padding: EdgeInsets.only(top: 3),
                                        child: Text(
                                          "Ditolak",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400,
                                              color: Color(0xFFFF3F33)),
                                        ),
                                      )
                                ],
                              ),
                            ),
                          );
                        }))
          ]
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        extendBody: true,
        floatingActionButton: FloatingActionButton(
            onPressed: () {},
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
                                  color: Color.fromARGB(169, 171, 12, 115)))),
                      Container(
                          width: 60,
                          child: InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_) => Chat()));
                              },
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
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
                              },
                              child: Column(children: [
                                Icon(Icons.person_outline,
                                    size: 30,
                                    color: Color.fromARGB(154, 69, 108, 251)),
                                Text('Profile',
                                    style: TextStyle(
                                        color: Color.fromARGB(154, 69, 108, 251)))
                              ])))
                    ]))),
    );
  }
}
