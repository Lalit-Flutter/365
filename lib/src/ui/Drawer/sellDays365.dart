
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart.dart';
import '../mic.dart';

class SellDays365 extends StatefulWidget {
  @override
  _SellDays365State createState() => _SellDays365State();
}

class _SellDays365State extends State<SellDays365> {
  static mic(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) => Wrap(children: [Mic()]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
