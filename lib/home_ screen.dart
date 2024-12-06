import 'package:assignment_2/post_widget.dart';
import 'package:assignment_2/status_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Container(
              width: 300,
              height: 40,
              child: Image(image: AssetImage('assets/images/Facebook.png'))),
          actions: [
            Icon(Icons.add_circle_outlined),
            SizedBox(
              width: 15,
            ),
            FaIcon(FontAwesomeIcons.magnifyingGlass),
            SizedBox(
              width: 15,
            ),
            FaIcon(FontAwesomeIcons.facebookMessenger),
            SizedBox(
              width: 10,
            ),
          ],
          bottom: TabBar(tabs: [
            Icon(
              Icons.home,
              size: 40,
            ),
            Icon(
              Icons.play_circle_outline_outlined,
              size: 40,
            ),
            Icon(
              FontAwesomeIcons.store,
              size: 30,
            ),
            Icon(
              FontAwesomeIcons.person,
              size: 38,
            ),
            Icon(
              FontAwesomeIcons.bell,
              size: 40,
            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profileImage.png'),
            ),
          ]),
        ),
        body: ListView(scrollDirection: Axis.vertical, children: [
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/profileImage.png'),
              ),
              Expanded(
                child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: " What's in Your Mind?",
                      hintStyle: TextStyle(
                        color: Color(0xff898f9c),
                      ),
                    )),
              ),
              Icon(
                FontAwesomeIcons.photoFilm,
                color: Colors.lightGreen,
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.only(bottom: 5),
                  width: 100,
                  height: 190,
                  child: Stack(
                    children: [
                      Image(
                          image: AssetImage('assets/images/profileImage.png')),
                      Column(
                        children: [
                          Expanded(child: Container()),
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.add_circle_outlined,
                              color: Colors.blue,
                              size: 30,
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffffffff),
                                shape: CircleBorder(
                                  side:
                                  BorderSide(color: Colors.white,width: 1),
                                ),
                                minimumSize: Size(1, 1)),
                          ),
                          Text(
                            'Create a \n  Story',
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
                Status(
                    ImagePath: 'assets/images/status.png',
                    profilePath: 'assets/images/profile.png'),
                Status(
                    ImagePath: 'assets/images/status.png',
                    profilePath: 'assets/images/profile.png'),
                Status(
                    ImagePath: 'assets/images/status.png',
                    profilePath: 'assets/images/profile.png'),
                Status(
                    ImagePath: 'assets/images/status.png',
                    profilePath: 'assets/images/profile.png'),
                Status(
                    ImagePath: 'assets/images/status.png',
                    profilePath: 'assets/images/profile.png'),
                Status(
                    ImagePath: 'assets/images/status.png',
                    profilePath: 'assets/images/profile.png'),
                Status(
                    ImagePath: 'assets/images/status.png',
                    profilePath: 'assets/images/profile.png'),
                Status(
                    ImagePath: 'assets/images/status.png',
                    profilePath: 'assets/images/profile.png'),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          ),
          Post(
              username: 'route',
              profilePath: 'assets/images/profilePost.png',
              postImagePath: 'assets/images/post.png'),
          Post(
              username: 'route',
              profilePath: 'assets/images/profilePost.png',
              postImagePath: 'assets/images/post.png'),
          Post(
              username: 'route',
              profilePath: 'assets/images/profilePost.png',
              postImagePath: 'assets/images/post.png'),
          Post(
              username: 'route',
              profilePath: 'assets/images/profilePost.png',
              postImagePath: 'assets/images/post.png'),
        ]),
      ),
    );
  }
}
