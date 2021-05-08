
import 'package:flutter/material.dart';

class Mic extends StatefulWidget {
  @override
  _MicState createState() => _MicState();
}

class _MicState extends State<Mic> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
       // mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            //color: Colors.white,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            /*decoration: new BoxDecoration(
                color: Colors.white,
                borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(20.0),
                    topRight: const Radius.circular(0.0))),*/
            //decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
              height: 130.0,
              width: 130.0,
              decoration: new BoxDecoration(
              shape: BoxShape.circle,

              border: Border.all(color: const Color(0xFF06588F),width: 2),
              // image: new Image.asset(_image.)
            ),
      child:   Container(
        margin: EdgeInsets.all(25),
        child: Image.asset(
                "./assets/images/voice.png",color: Color(0xFF06588F),
                scale: 12,
              ),
      ),
    ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('TAP TO SPEAK',style: TextStyle(
                    color: Color(0xFFFf9933),
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text('BACK',style: TextStyle(
                      color: Color(0xFFFf9933),
                      fontSize: 13,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

