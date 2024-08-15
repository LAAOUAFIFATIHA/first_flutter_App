import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';



void main() => runApp( const MaterialApp (
    home: home()
));


class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const  Text('my favorite cacke', style: TextStyle(
              decoration: TextDecoration.underline ,
              fontFamily: String.fromEnvironment('''italic''')

        ),),
        centerTitle: true ,
        backgroundColor: Colors.green,
      ) ,
      body: Column(
      children: <Widget>[
     Expanded(
       child: Image.asset('images/img_1.png' , fit: BoxFit.cover , ) ,
     ) ,
     Expanded(
       child: Image.asset('images/img.png' ,fit: BoxFit.cover, ) ,
       flex: 1,


    ) ,

    ],


      )
    );
  }
}




