import 'dart:async';
import 'package:days365app/src/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'src/ui/login.dart';
//https://medium.com/codechai/architecting-your-flutter-project-bd04e144a8f1
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Days 365',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),

    );
  }
}

/*class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        home: AnimatedSplashScreen(
            duration: 300,
            splash:  Container(

                color: Colors.white,
                child: Image.asset(
                  "./assets/images/logo.png",
                  scale: 5.0,
                )),
            nextScreen: Login(),
            splashTransition: SplashTransition.sizeTransition,
            pageTransitionType: PageTransitionType.fade,
            backgroundColor: Colors.white
        )
    );
  }
}*/
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFirstScreen = false;
  @override
  void initState() {
    super.initState();
    checkFirstScreen();
   /* Timer(
      Duration(seconds: 5),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Login()),
      ),
    );*/
  }
  Future<void> checkFirstScreen() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    //if First statement is Null Or NO Value is returning then it will give us Second Value
    bool seen = (pref.getBool('seen') ?? false);
    if (seen) {
      setState(() {
        isFirstScreen = true;
      });
    } else {
      setState(() {
        isFirstScreen = false;
      });
    }
    Timer(Duration(seconds: 3), () {
      // Navigator.pushNamed(context, '/mainScreenPage');
     /* Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MainScreenPage()));*/
      if (isFirstScreen  == false) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
      } else {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home()));
      }
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                color: Colors.white,
                child: Image.asset(
                  "./assets/images/logo.png",
                  scale: 10.0,
                )),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              child:  Image.asset(
                "./assets/images/days.png",
                scale: 3.5,
              ),)
          ],
        ),
      ),
    );
  }
}
