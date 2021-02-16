import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';

class Studentdetails extends StatelessWidget {
  const Studentdetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var studentdata = [
      "Amir Hamza",
      "Abu Bakkar",
      "Shiblo",
      "Labib",
      "Sunny",
      "Sakib"
    ];
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // i=0 i<10 index++
            ListView.builder(
              shrinkWrap: true,
              itemCount: studentdata.length,
              itemBuilder: (BuildContext context, int i) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: Get.width,
                    child: Neumorphic(
                        style: NeumorphicStyle(
                            shape: NeumorphicShape.concave,
                            boxShape: NeumorphicBoxShape.roundRect(
                                BorderRadius.circular(10)),
                            depth: 4,
                            color: Color(0xFFFFFFFF)),
                        child: ListTile(
                          leading: CircleAvatar(),
                          title: Text(studentdata[i]),
                        )),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  customrow({var img, text}) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 170,
            width: 150,
            child: Neumorphic(
              style: NeumorphicStyle(
                  shape: NeumorphicShape.concave,
                  boxShape:
                      NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                  depth: 4,
                  color: Color(0xFFFFFFFF)),
              child: Column(
                children: [
                  Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfX11dCaZ_hwbizxuy6KCmgWZyp4IP0nqFaA&usqp=CAU"),
                  Text("$text")
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
