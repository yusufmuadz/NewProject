// @dart=2.9

import 'package:flutter/material.dart';

class DetailChat extends StatefulWidget {
  @override
  State<DetailChat> createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(70), child:
        AppBar(
          elevation: 1,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            padding: EdgeInsets.only(top: 30, left: 8),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios, size: 20, color: Colors.black)),
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/image/Rectangle132.png')))
                ),
                SizedBox(width: 10),
                    Text('Bu Guru',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
        )),
        body: Stack(
          children: [
            Form(
              key: _formKey,
              child:
            SingleChildScrollView(
              padding: EdgeInsets.only(bottom: 60),
              child:
            Column(
              children: [
                Container(
                  width: 100,
                  margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Color(0xFFECEFF1)
                        ),
                    child: Text('Today',
                        maxLines: null,
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF898989)))
                  ),
            ListView.builder(
                itemCount: 1,
                shrinkWrap: true,
                padding: EdgeInsets.all(20),
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/image/Rectangle132.png')))
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Bu Guru',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                            SizedBox(height: 5),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              padding: EdgeInsets.all(10),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(7),
                                      bottomRight: Radius.circular(7),
                                      bottomLeft: Radius.circular(7)),
                                  color: Color(0xFFECEFF1)),
                              child: Text('Can i help you? any questions?',
                                  maxLines: null,
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400)),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
              ],
            ))),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.only(bottom: 20, right: 20, left: 20),
                  padding: EdgeInsets.only(right: 20, left: 20),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Color(0xFFF6F6F6),
                  ),
                  child: TextFormField(
                    maxLines: null,
                    decoration: InputDecoration(
                        hintText: 'Your Message...',
                        hintStyle: TextStyle(color: Color(0xFFD0D0D0)),
                        border: InputBorder.none,
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                        suffixIcon: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                                width: 1,
                                height: MediaQuery.of(context).size.height,
                                margin: EdgeInsets.all(15),
                                color: Colors.transparent),
                            InkWell(
                                onTap: () {},
                                child:
                                    Icon(Icons.send, color: Color.fromARGB(169, 171, 12, 115)))
                          ],
                        )),
                  ),
                ))
          ],
        ));
  }
}
