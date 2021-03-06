// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BigIcons2 extends StatelessWidget {
  const BigIcons2({
    Key? key,
    required this.img,
    required this.value,
    required this.color,
    required this.imgWidth,
    required this.imgHeight,
  }) : super(key: key);
  final String img, value;
  final Color color;
  final double imgWidth, imgHeight;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size.width * 0.26,
          height: 110,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        Positioned(
          child: Column(
            children: [
              Image(
                image: AssetImage('assets/images/tracking/$img.png'),
                width: imgWidth,
                height: imgHeight,
              ),
              SizedBox(height: 10),
              Text(
                value,
                style: TextStyle(
                  fontSize: 14,
                  color: value == 'Walk' ? Colors.white : Color(0xff818496),
                  fontWeight:
                      value == 'Walk' ? FontWeight.w600 : FontWeight.w200,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
