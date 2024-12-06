import 'package:assignment_2/home_%20screen.dart';
import 'package:assignment_2/login_slot.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  static String routeName='LoginScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(children: [
          Expanded(flex: 3,child: Container()),
          Image(image: AssetImage('assets/images/appLogo.png'), height: 150,width: 150,),
          Expanded(flex: 3,child: Container()),
          LoginSlot(hintText: 'Mobile Number or Email Address'),
          Expanded(child: Container()),
          LoginSlot(hintText: 'Password'),
          Expanded(child: Container()),
          ElevatedButton(onPressed: (){Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);}, child: Container(width: 490,alignment: Alignment.center,child: Text('Login',style: TextStyle(color:Colors.white),)),
            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,padding: EdgeInsets.all(20),),),
          TextButton(
              onPressed: (){}, child: Text('Forgotten Password ?',style: TextStyle(color: Color(0xff898f9c)),)
          ),
          Expanded(flex: 10,child: Container()),
          ElevatedButton(onPressed: (){}, child: Container(width: 490,alignment: Alignment.center,child: Text('Create Account',style: TextStyle(color:Color(0xff1877f2)),)),
            style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20),side: BorderSide(color: Color(0xff1877f2))),),
          Image(image: AssetImage('assets/images/metaLogo.png'),width: 147,height: 60,),
          Expanded(child: Container()),
        ],),
      ],
    ),);
  }
}