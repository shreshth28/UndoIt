import 'dart:math';
import 'package:flash_chat/screens/voice_call.dart';
import 'package:flash_chat/src/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:smooth_star_rating/smooth_star_rating.dart';

class TrainersScreen extends StatefulWidget {
  static String id = 'trainers_screen';

  @override
  _TrainersScreenState createState() => _TrainersScreenState();
}

class _TrainersScreenState extends State<TrainersScreen> {
  List<String> name = [
    'Ananya K R',
    'Ayushi Das',
    'Harshit Singh',
    'Prerna Dua'
  ];
  List<String> college = [
    'IIT Bombay - CSE',
    'VIT Vellore -ECE',
    'NIT Trichy -EEE',
    'ISM Dhanbad -CSE'
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: Icon(
              FontAwesomeIcons.bars,
              color: Colors.black87,
            ),
            centerTitle: true,
            title: Text(
              'Featured',
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 1.5),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {},
              )
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'RATING',
                    style: TextStyle(color: Colors.black54, fontSize: 14),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Center(
                      child: Icon(
                        FontAwesomeIcons.caretDown,
                        size: 16,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                flex: 10,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return (MyCard(
                      college: college[index],
                      name: name[index],
                      url: index.toString(),
                    ));
                  },
                ),
              ),
              BottomNavyBar(
                onItemSelected: (index) => setState(() {}),
                currentIndex: 0,
                items: [
                  BottomNavyBarItem(
                    icon: Icon(Icons.apps),
                    title: Text('Home'),
                    activeColor: Colors.teal,
                  ),
                  BottomNavyBarItem(
                      icon: Icon(Icons.people),
                      title: Text('Users'),
                      activeColor: Colors.teal),
                  BottomNavyBarItem(
                      icon: Icon(Icons.message),
                      title: Text('Messages'),
                      activeColor: Colors.teal),
                  BottomNavyBarItem(
                      icon: Icon(Icons.settings),
                      title: Text('Settings'),
                      activeColor: Colors.teal),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String url;
  final String name;
  final String college;
  static var rng = new Random();
  final int rating = rng.nextInt(5);

  MyCard({this.college, this.name, this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tapped');
        Navigator.pushNamed(context, IndexPage.id);
      },
      child: Container(
        height: 300,
        width: double.infinity,
        child: Stack(children: <Widget>[
          Center(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                image: DecorationImage(
                  image: AssetImage(
                    'images/$url.jpg',
                  ),
                  fit: BoxFit.none,
                  colorFilter:
                      ColorFilter.mode(Colors.black54, BlendMode.multiply),
                ),
                borderRadius: url == '0'
                    ? BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )
                    : BorderRadius.circular(0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    name,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w200),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    college,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w200),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SmoothStarRating(
                      allowHalfRating: false,
                      onRatingChanged: (v) {},
                      starCount: 5,
                      rating: rating.toDouble(),
                      size: 20.0,
                      color: Colors.white,
                      borderColor: Colors.black,
                      spacing: 0.0)
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
