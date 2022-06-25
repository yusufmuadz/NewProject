// @dart=2.9

import 'package:flutter/material.dart';

class Kehadiran extends StatefulWidget {
  Kehadiran({this.alfa, this.izin, this.sakit});
  bool alfa = true, izin = false, sakit = false;
  @override
  State<Kehadiran> createState() => _KehadiranState();
}

class _KehadiranState extends State<Kehadiran> {
  // bool _presensi = true, _izin = false, _cuti = false;
  final _formKey = GlobalKey<FormState>();
  _alasan(){
    return showDialog(context: context, builder: (BuildContext context){
      return Center(
        child: Form(
          key: _formKey,
          child: AlertDialog(
        contentPadding: EdgeInsets.zero,
        insetPadding: EdgeInsets.only(right: 20, left: 20),
        content: SingleChildScrollView(
          child:
      Container(
          // height: 252,
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(10),
          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.clear, size: 20, color: Colors.black,),
        )
                ],
              ),
              Divider(thickness: 1, height: 20, color: Color(0xFFECEFF1)),
              Container(
                  // height: 50,
                  margin: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    maxLines: null,
                    minLines: 4,
                    decoration: InputDecoration(
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
                Container(
                  height: 35,
                  width: 75,
                  margin: EdgeInsets.only(top: 25),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color(0xFF63ADAE)),
                  child: InkWell(
                    onTap: (){},
                    child:
                  Text(
          "Simpan",
          style: TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w400,
            color: Colors.white
          ),
        ),)
                )
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
        title: Text(
          "Daftar Kehadiran",
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
        padding: EdgeInsets.only(top: 5, bottom: 20, right: 20, left: 20),
        child: Column(
          children: [
            Row(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/3-14,
              decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 2, color: widget.alfa ? Color.fromARGB(154, 69, 108, 251) : Colors.transparent))),
              child: MaterialButton(onPressed: (){
                setState(() {
                  widget.izin = false;
                  widget.alfa = true;
                  widget.sakit = false;
                });
              },
              child: Center(
              child: Text(
                "Alfa",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: widget.alfa ? Colors.black : Color.fromARGB(169, 171, 12, 115)
          ),
        ),
              ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/3-13,
              decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 2, color: widget.izin ? Color.fromARGB(154, 69, 108, 251) : Colors.transparent))),
              child: MaterialButton(onPressed: (){
                setState(() {
                  widget.izin = true;
                  widget.alfa = false;
                  widget.sakit = false;
                });
              },
              child: Center(
              child: Text(
                "Izin",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: widget.izin ? Colors.black : Color.fromARGB(169, 171, 12, 115)
          ),
        ),
              ),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/3-13,
              decoration: BoxDecoration(border: Border(bottom: BorderSide(width: 2, color: widget.sakit ? Color.fromARGB(154, 69, 108, 251) : Colors.transparent))),
              child: MaterialButton(onPressed: (){
                setState(() {
                  widget.izin = false;
                  widget.alfa = false;
                  widget.sakit = true;
                });
              },
              child: Center(
              child: Text(
                "Sakit",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: widget.sakit ? Colors.black : Color.fromARGB(169, 171, 12, 115)
          ),
        ),
              ),
              ),
            )
          ],
        ),
        Visibility(
          visible: widget.alfa,
          child: Container(
            height: MediaQuery.of(context).size.height-170,
          child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
            return Container(
              // height: 241,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFFECEFF1)),
                borderRadius: BorderRadius.circular(7)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                "Osama Boden",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width-286),
        Spacer(),
        Container(
          // width: MediaQuery.of(context).size.width-266,
          // alignment: Alignment.centerRight,
          // width: MediaQuery.of(context).size.width-266,
          // margin: EdgeInsets.only(left: MediaQuery.of(context).padding.left),
          // padding: EdgeInsets.only(left: MediaQuery.of(context).padding.left),
          alignment: Alignment.centerRight,
          child:
              Icon(Icons.login, size: 20, color: Color(0xFF3CB778))),
              SizedBox(width: 5),
              Text(
                "Clock In",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF3CB778)
          ),
        ),
                    ],
                  ),
                  Text(
                "IT Division",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF909090)
          ),
        ),
        SizedBox(height: 15,),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(image: AssetImage('asset/image/Rectangle132.png'))
              ),
            ),
            SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.login, size: 20, color: Color(0xFFF79321),),
                    SizedBox(width: 10,),
                    Text(
                "8 January 2022 - 08:05:30",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
          ),
        ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.place_outlined, size: 20, color: Color(0xFFF79321),),
                    SizedBox(width: 10,),
                    Text(
                "Tamanan",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
          ),
        ),
                  ],
                ),
                SizedBox(height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.description_outlined, size: 20, color: Color(0xFFF79321),),
                    SizedBox(width: 10,),
                    Text(
                "Kebocoran Tangki",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400
          ),
        ),
                  ],
                )
              ],
            )
          ],
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width/2-43.5,
              decoration: BoxDecoration(border: Border.all(width: 1, color: Color(0xFFECEFF1)), borderRadius: BorderRadius.circular(7)),
              child: MaterialButton(onPressed: _alasan,
              child: Text("Tolak", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),),),
            SizedBox(width: 15,),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width/2-43.5,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), color: Color(0xFF63ADAE)),
              child: MaterialButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => OTP()));
              },
              child: Text("Setujui", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),),),)
          ],
        )
                ],
              ),
            );
          }))
        ),
        Visibility(
          visible: widget.izin,
          child: Container(
            height: MediaQuery.of(context).size.height-170,
          child: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
            return Container(
              // height: 320,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFFECEFF1)),
                borderRadius: BorderRadius.circular(7)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                "Izin Mau Healing",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500
          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width-305),
        // SizedBox(width: MediaQuery.of(context).size.width-286),
        Spacer(),
        Container(
          // width: MediaQuery.of(context).size.width-285,
          // // margin: EdgeInsets.only(left: MediaQuery.of(context).padding.left),
          // padding: EdgeInsets.only(left: MediaQuery.of(context).padding.left),
          alignment: Alignment.centerRight,
          child:
              Icon(Icons.access_time_outlined, size: 20, color: Color(0xFFF79321))),
              SizedBox(width: 5,),
              Text(
                "Pending",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFF79321)
          ),
        ),
                    ],
                  ),
                  Divider(thickness: 1, height: 20,),
                  Text(
                "Jumlah Izin",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF909090)
          ),
        ),
        SizedBox(height: 5,),
        Text(
                "9 Hari",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400
          ),
        ),
        SizedBox(height: 15,),
        Text(
                "Waktu",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF909090)
          ),
        ),
        SizedBox(height: 5,),
        Text(
                "2 Januari 2022 - 11 Januari 2022",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400
          ),
        ),
        SizedBox(height: 15,),
        Text(
                "Keterangan",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF909090)
          ),
        ),
        SizedBox(height: 5,),
        Text(
                "Healing",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400
          ),
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width/2-43.5,
              decoration: BoxDecoration(border: Border.all(width: 1, color: Color(0xFFECEFF1)), borderRadius: BorderRadius.circular(7)),
              child: MaterialButton(onPressed: _alasan,
              child: Text("Tolak", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),),),
            SizedBox(width: 15,),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width/2-43.5,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), color: Color(0xFF63ADAE)),
              child: MaterialButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => OTP()));
              },
              child: Text("Setujui", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),),),)
          ],
        )
                ],
              ),
            );
          }))
        ),
        Visibility(
          visible: widget.sakit,
          child: Container(
            height: MediaQuery.of(context).size.height-170,
          child: ListView.builder(
            itemCount: 2,
            shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index){
            return Container(
              // height: 326,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.only(top: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Color(0xFFECEFF1)),
                borderRadius: BorderRadius.circular(7)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                "Osama Boden",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500
          ),
        ),
        Text(
                "Cuti Melahirkan",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
          ),
        ),
                    ],
                  ),
                  Text(
                "IT Division",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF909090)
          ),
        ),
        Divider(thickness: 1, height: 20,),
                  Text(
                "Jumlah Izin",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF909090)
          ),
        ),
        SizedBox(height: 5,),
        Text(
                "9 Hari",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400
          ),
        ),
        SizedBox(height: 15,),
        Text(
                "Waktu",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF909090)
          ),
        ),
        SizedBox(height: 5,),
        Text(
                "2 Januari 2022 - 11 Januari 2022",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400
          ),
        ),
        SizedBox(height: 15,),
        Text(
                "Keterangan",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF909090)
          ),
        ),
        SizedBox(height: 5,),
        Text(
                "Healing",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400
          ),
        ),
        SizedBox(height: 20,),
        Row(
          children: [
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width/2-43.5,
              decoration: BoxDecoration(border: Border.all(width: 1, color: Color(0xFFECEFF1)), borderRadius: BorderRadius.circular(7)),
              child: MaterialButton(onPressed: _alasan,
              child: Text("Tolak", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),),),
            SizedBox(width: 15,),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width/2-43.5,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), color: Color(0xFF63ADAE)),
              child: MaterialButton(onPressed: (){
                // Navigator.push(context, MaterialPageRoute(builder: (context) => OTP()));
              },
              child: Text("Setujui", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),),),)
          ],
        )
                ],
              ),
            );
          }))
        )
        ],
        ),
      ),
    );
  }
}