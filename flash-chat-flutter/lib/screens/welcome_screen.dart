import 'package:flutter/material.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flash_chat/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
//
//        animation.addStatusListener((status){
//      if(status == AnimationStatus.completed) {
//        controller.reverse(from: 1.0);
//      } else if (status == AnimationStatus.dismissed){
//        controller.forward();
//      }
//    });
// zapętlenie animacji

    controller.addListener(() {
      setState(() {});
      //print(controller);
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                TypewriterAnimatedTextKit(
                  text: ['Geek\'n Chat'],
                  textStyle: TextStyle(
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(
              text: 'Log In',
              colour: Colors.grey,
              onClicked: () {
                Navigator.pushNamed(context, LoginScreen.id);
                //Go to login screen.
              },
            ),
            RoundedButton(
              colour: Colors.black,
              text: 'Register',
              onClicked: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
                //Go to registration screen.
              },
            ),
          ],
        ),
      ),
    );
  }
}
