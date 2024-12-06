import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{
  static String routeName='Splashscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(children: [
          Expanded(child: Container()),
          Image(image: AssetImage('assets/images/appLogo.png'),height: 150,width: 150,),
          Expanded(flex: 8,child: Container()),
          Text('From',style: TextStyle(color: Color(0xff898F9C)),),
          Image(image: AssetImage('assets/images/metaLogo.png'),width: 147,height: 60,),
          Expanded(child: Container()),
        ],),
      ],
    ));
  }
}