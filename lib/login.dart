// @dart=2.9

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:semesta/Registrasi/registrasi.dart';
import 'package:semesta/verifikasi.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
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
    // _globalKey = GlobalKey<ScaffoldState>();
    // KeyboardVisibilityNotification().addNewListener(
    //   onHide: (){}
    // );
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
  GlobalKey<ScaffoldState> _globalKey;
  bool _visibility(){
    return (MediaQuery.of(context).viewInsets.bottom == 0.0);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: _formKey,
          child:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // AnimatedContainer(duration: Duration(milliseconds: 500), height: _height, width: MediaQuery.of(context).size.width, child:
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
                  enlargeCenterPage: false,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  viewportFraction: 1,
                  onPageChanged: (index, page){
                    setState(() {
                      _indicator = index;
                    });
                  }
                )),
          ) 
          : 
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
                  enlargeCenterPage: false,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  viewportFraction: 1,
                  onPageChanged: (index, page){
                    setState(() {
                      _indicator = index;
                    });
                  }
                )),
          ),
          Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              child:
            Text('Login', textAlign: TextAlign.center, style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600))),
          AnimatedPadding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom + MediaQuery.of(context).padding.bottom), curve: Curves.easeOutQuad, duration: Duration(milliseconds: 200), child:
          Container(
            padding: EdgeInsets.all(20),
            child:
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
              width: MediaQuery.of(context).size.width,
              child:
            Text('Nomor Telepon', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400))),
                        Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 10),
                  child: TextFormField(
                    autofocus: true,
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
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFECEFF1)),
                          borderRadius: BorderRadius.circular(7)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: Color(0xFFECEFF1)),
                          borderRadius: BorderRadius.circular(7)),
                    ),
                  ),
                ),
                Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),
            color:Color.fromARGB(135, 171, 12, 115)
            ),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Verifikasi()));
              },
              child: Text("Login", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white)))),
                   SizedBox(height: 40),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Belum punya akun?",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400)),
                    InkWell(
                      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (_) => Registrasi()));},
                      child:
                    Text(" Daftar disini",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(135, 171, 12, 115))))
                    ],
                   )
            ],
          )),
          ),
          ],
        ),
      )
        )
    );
  }
}