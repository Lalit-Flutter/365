
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart.dart';
import '../mic.dart';

class TodayDeals extends StatefulWidget {
  @override
  _TodayDealsState createState() => _TodayDealsState();
}

class _TodayDealsState extends State<TodayDeals> {
  static mic(BuildContext context) {
    showModalBottomSheet(

      isScrollControlled: true,
      context: context,
      builder: (context) => Wrap(children: [Mic()]),
    );
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Color(0xFFADBD2E),
        //drawer: Dbar(),
        appBar: AppBar(
          backgroundColor: Color(0xFFADBD2E),
          title: Image.asset(
            "./assets/images/days.png",
            scale: 3.5,
          ),
          actions: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(
                    builder: (context) => SearchBar()),
                );
              },
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Icon(Icons.search,size: 24,color: Colors.black,),
              ),
            ),
            GestureDetector(
              onTap: (){
                mic(context);
              },
              child: Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                child: Icon(Icons.mic,size: 24,color: Colors.black,),
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.center,
              child: Icon(Icons.shopping_cart_outlined,size: 24,color: Colors.black,),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[

            ],
          ),
        ),
      ),
    );
  }
}
