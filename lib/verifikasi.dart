// @dart=2.9

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:semesta/beranda.dart';

class Verifikasi extends StatefulWidget {

  @override
  State<Verifikasi> createState() => _VerifikasiState();
}

class _VerifikasiState extends State<Verifikasi> with SingleTickerProviderStateMixin{
  final _formKey = GlobalKey<FormState>();
  final _focus = FocusNode();
  AnimationController _animationController;
  Animation _animation;
  List<dynamic> _listCarousel = [
    'assets/image/medical-school.jpg',
    'assets/image/school-.jpg',
    'assets/image/school.jpg'
  ];
  int _indicator = 0;
  List<T> map<T>(List list, Function handler){
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 200));
    _animation = Tween(begin: 400.0, end: 200.0).animate(_animationController) ..addListener(() {setState(() {
      
    });});
    _focus.addListener(() {
      if (_focus.hasFocus) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _focus.dispose();
    _animationController.dispose();
  }
  bool _visibility(){
    return (MediaQuery.of(context).viewInsets.bottom == 0.0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
         Form(
          key: _formKey,
          child:
            
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _visibility() ?
             Container(
      child: CarouselSlider(items: _listCarousel.map((item) => Stack(
        children: [
          Container(
                  decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(item), fit: BoxFit.cover)
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                children: map<Widget>(_listCarousel, (index, url){
                  return Container(
                    height: 10,
                    width: _indicator == index ? 30 : 10,
                    margin: EdgeInsets.only(bottom: 5, right: 3),
                    decoration: BoxDecoration(
                      // border: Border.all(width: 1, color: Color(0xFF4D4D4F)),
                      borderRadius: BorderRadius.circular(5),
                      color: _indicator == index ? Color(0xFF005E51) : Color(0xFFE3E3E3)
                    ),
                  );
                }),
              ))
        ],
      )).toList(), options: CarouselOptions(
                  height: 400,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  initialPage: 0,
                  reverse: false,
                  // aspectRatio: 0,
                  // pageSnapping: false,
                  // pageViewKey: _pageViewKey,
                  enlargeCenterPage: false,
                  // enlargeStrategy: CenterPageEnlargeStrategy.height,
                  // enableInfiniteScroll: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  viewportFraction: 1,
                  onPageChanged: (index, page){
                    setState(() {
                      _indicator = index;
                    });
                  }
                )),
          ) : Container(
      child: CarouselSlider(items: _listCarousel.map((item) => Stack(
        children: [
          Container(
                  decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(item), fit: BoxFit.cover)
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                width: 250,
                padding: EdgeInsets.all(20),
                child:
          RichText(
            text: TextSpan(
                text: "Find your dream",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF005E51)),
                children: [
                  TextSpan(
                      text: " Home",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)
                          ),
                          TextSpan(
                      text: " with us",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF005E51)),
                          ),
                          TextSpan(
                      text: " Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam",
                      style: TextStyle(
                          fontFamily: "Inter",
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                          ),
                ]),
            textAlign: TextAlign.left,
          ),
              )),
                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                children: map<Widget>(_listCarousel, (index, url){
                  return Container(
                    height: 10,
                    width: _indicator == index ? 30 : 10,
                    margin: EdgeInsets.only(bottom: 5, right: 3),
                    decoration: BoxDecoration(
                      // border: Border.all(width: 1, color: Color(0xFF4D4D4F)),
                      borderRadius: BorderRadius.circular(5),
                      color: _indicator == index ? Color(0xFF005E51) : Color(0xFFE3E3E3)
                    ),
                  );
                }),
              ))
        ],
      )).toList(), options: CarouselOptions(
                  height: 200,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  initialPage: 0,
                  reverse: false,
                  // aspectRatio: 0,
                  // pageSnapping: false,
                  // pageViewKey: _pageViewKey,
                  enlargeCenterPage: false,
                  // enlargeStrategy: CenterPageEnlargeStrategy.height,
                  // enableInfiniteScroll: true,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  viewportFraction: 1,
                  onPageChanged: (index, page){
                    setState(() {
                      _indicator = index;
                    });
                  }
                )),
          ),
          // AnimatedPadding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom + MediaQuery.of(context).padding.bottom), curve: Curves.easeOutQuad, duration: Duration(milliseconds: 200), child:
          Container(
            padding: EdgeInsets.all(20),
            child:
          Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              child:
            Text('Masukkan kode verifikasi', textAlign: TextAlign.center, style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600))),
             SizedBox(height: 30),
            Text('Kode verfikasi telah dikirim melalui SMS to 0823******90', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400, color: Color(0xFF898989))),
            SizedBox(height: 35),
            PinCodeTextField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                animationType: AnimationType.fade,
                cursorColor: Colors.black,
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                focusNode: _focus,
                // backgroundColor: Colors.white,
                // enableActiveFill: true,
                // enablePinAutofill: true,
                // pastedTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                // animationDuration: Duration(milliseconds: 500),
                pinTheme: PinTheme(
                  borderRadius: BorderRadius.circular(7),
                  shape: PinCodeFieldShape.box,
                  fieldHeight: 50,
                  fieldWidth: 50,
                  borderWidth: 1,
                  selectedColor: Color(0xFFECEFF1),
                  // disabledColor: Colors.blue,
                  // selectedFillColor: Colors.blue,
                  activeColor: Color(0xFFECEFF1),
                  inactiveColor: Color(0xFFECEFF1),
                  // activeFillColor: Colors.blue,
                  // errorBorderColor: Colors.red
                ),
                appContext: context,
                length: 6,
                onChanged: (value) {},
                // validator: (idOutlet) {
                //   if (idOutlet.isEmpty) {
                //     return 'Masukkan pin anda';
                //   }
                //   _id_outlet = idOutlet;
                //   return null;
                // },
              ),
                Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),
            color:Color.fromARGB(135, 171, 12, 115)),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Beranda()));
              },
              child: Text("Verifikasi", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white))))
          ],
        ))
        // )
       ]
        ),
      )
    // )
    // )
    );
  }
}