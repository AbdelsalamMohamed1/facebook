import 'package:flutter/material.dart';

class Status extends StatelessWidget{
  String profilePath;
  String ImagePath;
  Status({required this.ImagePath,required this.profilePath});
  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.all(10),child: Stack(alignment: Alignment.topLeft,children: [Image(image: AssetImage(ImagePath),fit: BoxFit.fill,),CircleAvatar(backgroundImage: AssetImage(profilePath),)],));
  }
}