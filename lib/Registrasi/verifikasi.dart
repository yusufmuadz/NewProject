// @dart=2.9

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:semesta/login.dart';

class VerifikasiRegis extends StatefulWidget {
  @override
  State<VerifikasiRegis> createState() => _VerifikasiRegisState();
}

class _VerifikasiRegisState extends State<VerifikasiRegis> {
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
          "Verifikasi",
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
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 20, right: 20, left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'Masukkan Kode OTP yang dikirimkan ke nomor telepon',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.w400, color: Color(0xFF909090)),
                children: [
                  TextSpan(text: '081234567124.',
                  style: TextStyle(color: Colors.black))
                ]
              )),
              Container(
                margin: EdgeInsets.only(top: 15),
                child: RichText(text: TextSpan(text: 'Kode OTP ',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black)))),
              SizedBox(height: 20),
              PinCodeTextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                animationType: AnimationType.fade,
                cursorColor: Colors.black,
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                pinTheme: PinTheme(
                  fieldWidth: 45,
                  borderWidth: 1,
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(2),
                  selectedColor: Color(0xFFFFD7D4),
                  activeColor: Color(0xFF45AEFB),
                  inactiveColor: Color(0xFFECEFF1)),
                  appContext: context,
                  length: 6,
                  onChanged: (value) {},
                  // validator: (idOutlet) {
                  ////   if (idOutlet.isEmpty) {
                  /////     return 'Masukkan pin anda';
                  /////   }
                  /////   _id_outlet = idOutlet;
                  /////   return null;
                  ///// }
                ),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 15),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(2), color: Color(0xFF0C68AB)),
                child: MaterialButton(onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => Beranda()));
                },
                child: Text("Masuk", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)))),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));},
                child: RichText(text: TextSpan(text: 'Belum menerima kode OTP? ',
                  style: TextStyle(fontFamily: 'Poppins', fontSize: 13, fontWeight: FontWeight.w400, color: Colors.black),
                  children: [
                    TextSpan(text: 'Kirim Ulang ',
                    recognizer: TapGestureRecognizer()..onTap = (){},
                    style: TextStyle(color: Color.fromARGB(135, 171, 12, 115)))
                  ]
                  ))))
            ]
          )
        ))
    );
  }
}