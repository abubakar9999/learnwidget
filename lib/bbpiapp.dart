import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Bbpiapp extends StatelessWidget {
  const Bbpiapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //   height: 100,
              //   width: 100,
              //   child: Card(
              //       elevation: 5,
              //       child: Image.network(
              //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfX11dCaZ_hwbizxuy6KCmgWZyp4IP0nqFaA&usqp=CAU")),
              // )

              customrow(),
              Text(''),

              customrow(),
              Text(''),

              Text('')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //   height: 100,
              //   width: 100,
              //   child: Card(
              //       elevation: 5,
              //       child: Image.network(
              //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfX11dCaZ_hwbizxuy6KCmgWZyp4IP0nqFaA&usqp=CAU")),
              // )

              customrow(),
              Text(''),

              customrow(),
              Text(''),

              Text('')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Container(
              //   height: 100,
              //   width: 100,
              //   child: Card(
              //       elevation: 5,
              //       child: Image.network(
              //           "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfX11dCaZ_hwbizxuy6KCmgWZyp4IP0nqFaA&usqp=CAU")),
              // )

              customrow(),
              Text(''),

              customrow(),
              Text(''),

              Text('')
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
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfX11dCaZ_hwbizxuy6KCmgWZyp4IP0nqFaA&usqp=CAU"),
                  Text("Blood Information")
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
