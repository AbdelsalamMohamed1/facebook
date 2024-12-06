import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget{
  String username;
  String profilePath;
  String postImagePath;
  Post({required this.username, required this.profilePath, required this.postImagePath});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
        CircleAvatar(backgroundImage: AssetImage(profilePath),),
        Column(children: [Text(username),Row(children: [Text('8h'),Icon(FontAwesomeIcons.walkieTalkie)],
        ),
        ],),
        Expanded(child: Container(),),
        Icon(Icons.more_horiz),
      ],),
      Container(width: double.infinity,child: Image(image: AssetImage(postImagePath),fit: BoxFit.fill,)),
      Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(children: [
          SizedBox(width: 15,),
          Icon(FontAwesomeIcons.heart),
          SizedBox(width: 10,),
          Icon(FontAwesomeIcons.commentDots),
          SizedBox(width: 10,),
          Icon(FontAwesomeIcons.paperPlane),
          Expanded(child: Container()),
          Icon(FontAwesomeIcons.bookmark),
          SizedBox(width: 5,)
        ],),
      ),
    Container(decoration: BoxDecoration(border: Border.all(color: Colors.grey)),)
    ],) ;
  }
}