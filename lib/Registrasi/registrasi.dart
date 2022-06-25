// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:semesta/Registrasi/verifikasi.dart';
import 'package:semesta/login.dart';

class Registrasi extends StatefulWidget {
  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {Navigator.pop(context);},
            child: Icon(
              Icons.keyboard_arrow_left,
              size: 35,
              color: Colors.black,
            )),
            titleSpacing: 0,
        title: Text(
          "Registrasi",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 19,
            fontWeight: FontWeight.w600,
          ),
        ),
        elevation: 0.5,
      ),
      body: Form(
        child:
      Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: Text('Nama', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400))),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Masukkan nama',
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFECEFF1))),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFECEFF1)),
                        borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFECEFF1)),
                        borderRadius: BorderRadius.circular(7))
                  )
                )
              ),
              SizedBox(height: 15),
              Container(child: Text('Email', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400))),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Email',
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFECEFF1))),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFECEFF1)),
                        borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFECEFF1)),
                        borderRadius: BorderRadius.circular(7))
                  )
                )
              ),
              SizedBox(height: 15),
              Container(child: Text('Nomor Telepon', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400))),
              Container(
                height: 50,
                margin: EdgeInsets.only(top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  decoration: InputDecoration(
                    hintText: 'Masukkan nomor telepon',
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFECEFF1))),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFECEFF1)),
                        borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Color(0xFFECEFF1)),
                        borderRadius: BorderRadius.circular(7))
                  )
                )
              ),
              Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 40),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),
            color:Color.fromARGB(135, 171, 12, 115)
            ),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => VerifikasiRegis()));
              },
              child: Text("Verifikasi", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)))),
              SizedBox(height: 120),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Sudah punya akun?",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400)),
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_) => Login()));},
                      child:
                    Text(" Masuk disini",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(135, 171, 12, 115))))
                    ],
                   )
          ],
        ),
      ))
    );
  }
}