import 'package:flutter/material.dart';
import 'package:flutter_project/coffee_prefs.dart';
import 'package:flutter_project/styled_body.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my first application' , style:
          TextStyle(
            color: Colors.white ,
            fontWeight: FontWeight.bold ,
          ),),
        centerTitle: true,
        backgroundColor: Colors.green[800] ,
      ),
      body: Column (
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.green[200],
            padding: const EdgeInsets.all(20),
            child : const StyledBody('What I like to eat .')
          ) ,
          Container(
              color: Colors.green[100],
              padding: const EdgeInsets.all(20),
              child : Coffee()
          ) ,
          Expanded(
              child:Image.asset('images/cake.png' ,
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomCenter,
              )
          )
        ],
      )

    )  ;
  }
}