import 'package:flutter/material.dart';

class LoginSlot extends StatelessWidget{
  String hintText;
  LoginSlot({required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 530,
      child: TextField
        (decoration: InputDecoration(border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(color:Color(0xff898F9C))),
          hintText: hintText,hintStyle: TextStyle(color:  Color(0xff898F9C))),),
    );
  }
}