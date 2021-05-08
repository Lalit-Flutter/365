import 'package:days365app/src/ui/detail_product.dart';
import 'package:days365app/src/ui/seeproduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mic.dart';
class Brand extends StatefulWidget {
  @override
  _BrandState createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  static address(BuildContext context) {
    showModalBottomSheet(

      isScrollControlled: true,
      context: context,
      builder: (context) => Wrap(children: [Mic()]),
    );
  }

  static mic(BuildContext context) {

    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) => Wrap(children: [Mic()]),
    );
  }
  /*Navigator.pushAndRemoveUntil(
  context,
  MaterialPageRoute(builder: (context) => MainPage()),
  (Route<dynamic> route) => false,
);*/




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFADBD2E),
      appBar:AppBar(
        centerTitle: true,
        leading: Icon(Icons.menu),
        title: Container(
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 5, 10),
                  child: Image.asset(
                    "./assets/images/logo.png",
                    scale: 15.0,
                  )),
              Container(
                /*alignment: Alignment.center,
                  padding: EdgeInsets.all(10),*/
                child:  Image.asset(
                  "./assets/images/days.png",color: Colors.white,
                  scale: 5,
                ),)
            ],
          ),
        ),
        actions: [
          GestureDetector(
            onTap: ()=> mic(context),
            child: Container(
              padding: EdgeInsets.only(right: 8),
              child: Image.asset(
                "./assets/images/voice.png",color: Colors.white,
                scale: 32,
              ),
            ),
          ),
          Container(
            width: 35,
            padding: EdgeInsets.only(right: 10),
            child: Image.asset(
              "./assets/images/cart.png",color: Colors.white,
              //scale: 30,
            ),
          ),
        ],
        backgroundColor: Color(0xFFADBD2E),
        bottom: PreferredSize(
            child: Container(
              //alignment: Alignment.topRight,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 10,),
                      child: Row(
                        children: <Widget>[
                          Container(
                            child: Icon(Icons.location_on_outlined,color: Colors.white,size: 16,),
                          ),
                          Container(
                            child: Text('Delivery To Lalit',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "./assets/images/search.png",color: Colors.white,
                              scale: 40,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Image.asset(
                              "./assets/images/camera.png",color: Colors.white,
                              scale: 40,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                )
            ),
            preferredSize: Size.fromHeight(40.0)),
      ),
      body:
      SingleChildScrollView(
        child: Container(
          child: Column(

            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.topLeft,
                child: Text('Brands',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // color: Color(0xFFFf9933A),
                padding: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SeeProduct()),

                          );
                        },
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[
                                  Image.asset(
                                    "./assets/images/b2.png",
                                    scale: 5,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(top: 10,bottom: 5),
                                    alignment: Alignment.center,
                                    child: Text('Muscle Tech',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //height: 60,

                        child: Card(
                          child: Container(
                            padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                            child: Column(

                              children: <Widget>[
                                Image.asset(
                                  "./assets/images/b2.png",
                                  scale: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10,bottom: 5),
                                  alignment: Alignment.center,
                                  child: Text('TrueBasics',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        //height: 60,

                        child: Card(
                          child: Container(
                            padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                            child: Column(

                              children: <Widget>[
                                Image.asset(
                                  "./assets/images/b2.png",
                                  scale: 5,
                                ),
                                Container(
                                  padding: EdgeInsets.only(top: 10,bottom: 5),
                                  alignment: Alignment.center,
                                  child: Text('TrueBasics',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),


                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 5),
                child: Image.asset(
                  "./assets/images/homeicon.png",
                  //scale: 15,
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text('Muscle Tech',
                        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SeeProduct()),

                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
                        //color: Color(0xFF06588F),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF06588F),
                          /*boxShadow: [
                               BoxShadow(color: Colors.green, spreadRadius: 3),
                             ],*/
                        ),
                        child: Text('See All',style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailProduct()),

                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text('TrueBasics',
                        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SeeProduct()),

                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
                        //color: Color(0xFF06588F),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF06588F),
                          /*boxShadow: [
                               BoxShadow(color: Colors.green, spreadRadius: 3),
                             ],*/
                        ),
                        child: Text('See All',style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailProduct()),

                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Text('TrueBasics',
                        style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SeeProduct()),

                        );
                      },
                      child: Container(
                        padding: EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
                        //color: Color(0xFF06588F),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFF06588F),
                          /*boxShadow: [
                               BoxShadow(color: Colors.green, spreadRadius: 3),
                             ],*/
                        ),
                        child: Text('See All',style: TextStyle(color: Colors.white),),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DetailProduct()),

                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //height: 60,

                          child: Card(
                            child: Container(
                              padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                              child: Column(

                                children: <Widget>[

                                  Image.asset(
                                    "./assets/images/chocolate.png",
                                    scale: 13,
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    child: Text('Fine Chocolate',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold
                                      ),),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Container(
                                          //alignment: Alignment.topRight,
                                          child: Text("\u{20B9}${310}",style: TextStyle(
                                            // decoration: TextDecoration.lineThrough,
                                              color: Colors.black,fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),
                                        Container(
                                          //alignment: Alignment.topRight,
                                          margin: EdgeInsets.only(left: 5),
                                          child: Text("799",style: TextStyle(
                                              decoration: TextDecoration.lineThrough,
                                              color: Colors.grey[400],fontSize: 10,fontWeight: FontWeight.bold),),
                                        ),

                                      ],
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 7,fontWeight: FontWeight.bold),),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}

