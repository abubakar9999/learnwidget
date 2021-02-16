import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:get/get.dart';
import 'package:profileapp/studentdetails.dart';

class Tests extends StatelessWidget {
  const Tests({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Get.to(Studentdetails());
                },
                child: customrow(text: "Student List"),
              ),
            ],
          )
        ],
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
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkoBmZf3sHdFMf_asMfFQKmxgul_nxs5I8mg&usqp=CAU"),
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
