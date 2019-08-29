import 'package:flash_chat/screens/trainers_screen.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/components/RaisedGradientButton.dart';
import 'package:flash_chat/components/CircularGradientButton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Flexible(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  height: 230.0,
                  width: 200.0,
                  child: Opacity(
                      opacity: 1,
                      child: Icon(
                        FontAwesomeIcons.pushed,
                        size: 120.0,
                        color: Colors.black54,
                      )),
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                style: TextStyle(
                    color: Colors.blueGrey.shade200,
                    fontWeight: FontWeight.w700),
                decoration: InputDecoration(
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                      color: Colors.blueGrey.shade200,
                      fontWeight: FontWeight.w700),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                onChanged: (value) {
                  //Do something with the user input.
                },
                style: TextStyle(
                    color: Colors.blueGrey.shade200,
                    fontWeight: FontWeight.w700),
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(
                      color: Colors.blueGrey.shade200,
                      fontWeight: FontWeight.w700),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey.shade200, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Colors.blueGrey.shade200, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: RaisedGradientButton(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                  ),
                  gradient: LinearGradient(
                    colors: <Color>[Colors.blue.shade800, Colors.red.shade700],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, TrainersScreen.id);
                  },
                ),
              ),
              Text(
                'Forgot Password?',
                style: TextStyle(
                    color: Colors.blue.shade800,
                    fontWeight: FontWeight.w400,
                    fontSize: 17.0),
              ),
              Container(
                margin: EdgeInsets.only(top: 40.0),
                color: Colors.pink.shade100,
                child: SizedBox(
                  width: double.infinity,
                  height: 1.0,
                ),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                      child: Container(
                    height: 100,
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                    child: Material(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue.shade900,
                      child: Center(
                          child: Icon(
                        FontAwesomeIcons.facebookF,
                        color: Colors.white,
                      )),
                    ),
                  )),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                      child: CircularGradientButton(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        gradient: LinearGradient(
                          colors: <Color>[
                            Colors.teal.shade300,
                            Colors.greenAccent.shade400,
                          ],
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, TrainersScreen.id);
                        },
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('By signing up, you agree to our'),
                  Text(
                    ' Terms & Conditions',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// Container(
//                       height: 100,
//                       padding: EdgeInsets.all(20),
//                       child: Material(
//                         color: Colors.greenAccent.shade400,
//                         borderRadius: BorderRadius.circular(30),
//                         child: Center(
//                           child: Text(
//                             'Sign Up',
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w400),
//                           ),
//                         ),
//                       ),
//                     ),
