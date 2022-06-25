// @dart=2.9

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class KeteranganAbsen extends StatefulWidget {
  @override
  State<KeteranganAbsen> createState() => _KeteranganAbsenState();
}

class _KeteranganAbsenState extends State<KeteranganAbsen> {
  Completer<GoogleMapController> _controller = Completer();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.keyboard_arrow_left,
                size: 35,
                color: Colors.black,
              )),
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
        body: Stack(
          children: [
            Form(
              key: _formKey,
              child:
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                height: 250,
                child: GoogleMap(
                  myLocationButtonEnabled: true,
                  myLocationEnabled: true,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                  initialCameraPosition: CameraPosition(
                      target: LatLng(-7.840957704544582, 110.38215292497871)),
                ),
              ),
              SizedBox(height: 15),
              Text(
            "Keterangan",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400
            ),
          ),
          Container(
                  // height: 50,
                  margin: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    maxLines: null,
                    minLines: 4,
                    decoration: InputDecoration(
                      hintText: 'Masukkan keterangan',
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Color(0xFFECEFF1))),
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFECEFF1)),
                          borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFECEFF1)),
                          borderRadius: BorderRadius.circular(7)),
                      // prefixText: 'https://'
                    ),
                  ),
                ),
          SizedBox(height: 15),
          Text(
            "Foto",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400
            ),
          ),
          // SizedBox(height: 20),
          Container(
            height: 80,
            width: 70,
            child:
          Stack(
                    children: [
                      // Center(
                        // child:
                      Container(
                        height: 60,
                        width: 60,
                        margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(image: AssetImage('assets/image/Rectangle132.png'))
                    ),
                  ),
                  // ),
                  Positioned(
                    // top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 1, color: Colors.white),
                        color: Colors.white
                      ),
                      child:
                    InkWell(
                      onTap: (){},
                      child: Center(
                        child: Icon(Icons.remove_circle, size: 27, color: Color(0xFFFF3F33),),
                    ),
                  )
                  ))
                    ],
                  ))
                ],
              ),
            )),
            Positioned(
        bottom: 0,
        right: 0,
        left: 0,
        child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), color: Color(0xFF63ADAE)),
              child: MaterialButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => PresensiBerhasil()));
              },
              child: Text("Clock In", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),),),))
          ],
        ),
    );
  }
}