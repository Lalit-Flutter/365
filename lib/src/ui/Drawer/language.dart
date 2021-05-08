import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

import '../mic.dart';
import '../searchBar.dart';
import 'drawer.dart';

class Language extends StatefulWidget {
  @override
  _LanguageState createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  int group=1;
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(10),
                child:Text('Select your preferred language',style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  // fontWeight: FontWeight.bold
                ),)
            ),
            Container(
                padding: EdgeInsets.only(left: 50,right: 50),
                child:Text('Everything in will be displayed in the language you select. All SMS will also be sent in your preferred language',
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    height: 1.5,
                    fontSize: 12,
                  ),)
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('English',style: TextStyle(color: Colors.black),)),
                      ],),),
                  Container(
                    child: Radio(
                      value: 1,
                      groupValue: group,
                      onChanged: (T) {
                        print(T);
                        setState(() {
                          group=T;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Divider(
                color: Colors.grey[300],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('English',style: TextStyle(color: Colors.black),)),
                      ],),),
                  Container(
                    child: Radio(
                      value: 2,
                      groupValue: group,
                      onChanged: (T) {
                        print(T);
                        setState(() {
                          group=T;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Divider(
                color: Colors.grey[300],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('English',style: TextStyle(color: Colors.black),)),
                      ],),),
                  Container(
                    child: Radio(
                      value: 3,
                      groupValue: group,
                      onChanged: (T) {
                        print(T);
                        setState(() {
                          group=T;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Divider(
                color: Colors.grey[300],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('English',style: TextStyle(color: Colors.black),)),
                      ],),),
                  Container(
                    child: Radio(
                      value: 4,
                      groupValue: group,
                      onChanged: (T) {
                        print(T);
                        setState(() {
                          group=T;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Divider(
                color: Colors.grey[300],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('English',style: TextStyle(color: Colors.black),)),
                      ],),),
                  Container(
                    child: Radio(
                      value: 5,
                      groupValue: group,
                      onChanged: (T) {
                        print(T);
                        setState(() {
                          group=T;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Divider(
                color: Colors.grey[300],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('English',style: TextStyle(color: Colors.black),)),
                      ],),),
                  Container(
                    child: Radio(
                      value: 6,
                      groupValue: group,
                      onChanged: (T) {
                        print(T);
                        setState(() {
                          group=T;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Divider(
                color: Colors.grey[300],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.home),
                        Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Text('English',style: TextStyle(color: Colors.black),)),
                      ],),),
                  Container(
                    child: Radio(
                      value: 7,
                      groupValue: group,
                      onChanged: (T) {
                        print(T);
                        setState(() {
                          group=T;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
              alignment: Alignment.bottomCenter,
              height: MediaQuery.of(context).size.height*0.08,
              width: MediaQuery.of(context).size.width,
              child:  FlatButton(
                minWidth: MediaQuery.of(context).size.width,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: BorderSide(color: Colors.blue)),
                color: Colors.blue,
                textColor: Colors.white,
                padding: EdgeInsets.all(8.0),
                onPressed: () {},
                child: Text(
                  "Save",
                  style: TextStyle(
                    fontSize: 14.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
