import 'package:flash_chat/screens/voice_call.dart';
import 'package:flash_chat/src/pages/index.dart';
import 'package:flutter/material.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/trainers_screen.dart';

void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.id,
      routes: {
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        TrainersScreen.id: (context) => TrainersScreen(),
        VoiceCallPage.id: (context) => VoiceCallPage(),
        IndexPage.id: (context) => IndexPage(),
      },
    );
  }
}
