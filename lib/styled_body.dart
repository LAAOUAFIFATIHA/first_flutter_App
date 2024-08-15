import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyledBody extends StatelessWidget {
  const StyledBody(this.text,{super.key});
  final String text ;

  @override
  Widget build(BuildContext context) {
    return Text(text , style: TextStyle(
        color: Colors.green ,
        fontWeight: FontWeight.bold
    ),);
  }
}
