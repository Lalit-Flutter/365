import 'dart:io';
import 'dart:async';


import 'package:days365app/src/ui/address.dart';
import 'package:days365app/src/ui/cart.dart';
import 'package:days365app/src/ui/searchbar.dart';
import 'package:days365app/src/ui/seeproduct.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'category.dart';
import 'allbrands.dart';
import 'brand.dart';
import 'women.dart';
import 'allCategories.dart';
import 'mic.dart';
import 'Drawer/drawer.dart';


class Home extends StatefulWidget {
  Home({ Key key }) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  File panimageFile;
  Future<void> _panCard(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0xFFADBD2E),
              title: Text("From where do you want to take the photo?"),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    GestureDetector(
                      child: Text("Gallery",style: TextStyle(color: Colors.white),),
                      onTap: () {
                        _openpanGallery(context);
                      },
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    GestureDetector(
                      child: Text("Camera",style: TextStyle(color: Colors.white),),
                      onTap: () {
                        _openpanCamera(context);
                      },
                    )
                  ],
                ),
              ));
        });
  }

  void _openpanGallery(BuildContext context) async {
    var picture = (await ImagePicker.pickImage(source: ImageSource.gallery));
    this.setState(() {
      panimageFile = picture;
    });
    Navigator.of(context).pop();
  }

  Future _openpanCamera(BuildContext context) async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      panimageFile = image;
    });
    Navigator.of(context).pop();
  }

  static address(BuildContext context) {
    showModalBottomSheet(

      isScrollControlled: true,
      context: context,
      builder: (context) => Wrap(children: [Address()]),
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
      drawer: DBar(),
         backgroundColor: Color(0xFFADBD2E),
        appBar:AppBar(
          centerTitle: true,
         // leading: Icon(Icons.menu),
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
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Cart()),

                );
              },
              child: Container(
                width: 35,
                padding: EdgeInsets.only(right: 10),
                child: Image.asset(
                  "./assets/images/cart.png",color: Colors.white,
                  //scale: 30,
                ),
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
                         GestureDetector(
                           onTap: ()=> address(context),
                           child: Container(
                             child: Text('Delivery To Lalit',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                           ),
                         )
                       ],
                     ),
                   ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Sea()),

                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "./assets/images/search.png",color: Colors.white,
                              scale: 40,
                            ),
                          ),
                        ),
                        if (panimageFile != null)
                          AspectRatio(
                            aspectRatio: 487 / 400,
                            child: Container(
                              margin: EdgeInsets.only(top: 10),
                              child: Image.file(
                                panimageFile,
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        GestureDetector(
                          onTap: ()=>_panCard(context),
                          child: Container(
                            padding: EdgeInsets.all(15),
                            child: Image.asset(
                              "./assets/images/camera.png",color: Colors.white,
                              scale: 40,
                            ),
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
                   width: MediaQuery.of(context).size.width,
                   color: Color(0xFFFFFFFF),
                   padding: EdgeInsets.all(10),
                   child: Row(
                     children: <Widget>[
                       Expanded(
                         //padding: EdgeInsets.only(right: 10,),
                         child: GestureDetector(
                           onTap: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => Category()),

                             );
                           },
                           child: Column(
                             children: <Widget>[
                               Container(
                                 height: 45.0,
                                 width: 45.0,
                                 decoration: new BoxDecoration(
                                   shape: BoxShape.circle,
                                   border: Border.all(color:  Colors.black,width: 1.2),
                                   // image: new Image.asset(_image.)
                                 ),
                                 child:   Container(
                                   //margin: EdgeInsets.all(25),
                                   child: Image.asset(
                                     "./assets/images/category.png",color: Color(0xFF06588F),
                                     scale: 15,
                                   ),
                                 ),
                               ),
                               Container(
                                 child: Text('Category',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                               )
                             ],
                           ),
                         ),
                       ),
                       Expanded(
                         //padding: EdgeInsets.only(right: 10,left: 5),
                         child: GestureDetector(
                           onTap: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => Brand()),

                             );
                           },
                           child: Column(
                             children: <Widget>[
                               Container(
                                 height: 45.0,
                                 width: 45.0,
                                 decoration: new BoxDecoration(
                                   shape: BoxShape.circle,
                                   border: Border.all(color:  Colors.black,width: 1.2),
                                   // image: new Image.asset(_image.)
                                 ),
                                 child:   Container(
                                   //margin: EdgeInsets.all(25),
                                   child: Image.asset(
                                     "./assets/images/brand.png",color: Color(0xFFFf9933),
                                     scale: 15,
                                   ),
                                 ),
                               ),
                               Container(
                                 child: Text('Brand',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                               )
                             ],
                           ),
                         ),
                       ),
                       Expanded(
                         //padding: EdgeInsets.only(right: 10,left: 5),
                         child: GestureDetector(
                           onTap: (){
                             showDialog(
                               context: context,
                               builder: (_) => FunkyOverlay(),
                             );
                           },
                           child: Column(
                             children: <Widget>[
                               Container(
                                 height: 45.0,
                                 width: 45.0,
                                 decoration: new BoxDecoration(
                                   shape: BoxShape.circle,
                                   border: Border.all(color:  Colors.black,width: 1.2),
                                   // image: new Image.asset(_image.)
                                 ),
                                 child:   Container(
                                   //margin: EdgeInsets.all(25),
                                   child: Image.asset(
                                     "./assets/images/gender.png",color: Color(0xFF06588F),
                                     scale: 15,
                                   ),
                                 ),
                               ),
                               Container(
                                 child: Text('Gender',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                               )
                             ],
                           ),
                         ),
                       ),
                       Expanded(
                         //padding: EdgeInsets.only(right: 10,left: 5),
                         child: Column(
                           children: <Widget>[
                             Container(
                               height: 45.0,
                               width: 45.0,
                               decoration: new BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(color:  Colors.black,width: 1.2),
                                 // image: new Image.asset(_image.)
                               ),
                               child:   Container(
                                 //margin: EdgeInsets.all(25),
                                 child: Image.asset(
                                   "./assets/images/best seller.png",color: Color(0xFFADBD2E),
                                   scale: 15,
                                 ),
                               ),
                             ),
                             Container(
                               child: Text('Best Seller',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                             )
                           ],
                         ),
                       ),
                       Expanded(
                         //padding: EdgeInsets.only(right: 10,left: 5),
                         child: Column(
                           children: <Widget>[
                             Container(
                               height: 45.0,
                               width: 45.0,
                               decoration: new BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(color:  Colors.black,width: 1.2),
                                 // image: new Image.asset(_image.)
                               ),
                               child:   Container(
                                 //margin: EdgeInsets.all(25),
                                 child: Image.asset(
                                   "./assets/images/offer.png",color: Color(0xFF06588F),
                                   scale: 15,
                                 ),
                               ),
                             ),
                             Container(
                               child: Text('Offer',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                             )
                           ],
                         ),
                       ),
                       Expanded(
                         //padding: EdgeInsets.only(right: 10,left: 5),
                         child: Column(
                           children: <Widget>[
                             Container(
                               height: 45.0,
                               width: 45.0,
                               decoration: new BoxDecoration(
                                 shape: BoxShape.circle,
                                 border: Border.all(color:  Colors.black,width: 1.2),
                                 // image: new Image.asset(_image.)
                               ),
                               child:   Container(
                                 //margin: EdgeInsets.all(25),
                                 child: Image.asset(
                                   "./assets/images/sale.png",color: Color(0xFFFf9933),
                                   scale: 15,
                                 ),
                               ),
                             ),
                             Container(
                               child: Text('Sale',style: TextStyle(fontSize: 10,fontWeight: FontWeight.w600),),
                             )
                           ],
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
                         child: Text('Category',
                         style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                       ),
                       GestureDetector(
                         onTap: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => AllCategories()),

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

                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: Container(
                           //height: 60,

                           child: GestureDetector(
                             onTap: (){
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => SeeProduct()),

                               );
                             },
                             child: Card(
                               child: Container(
                                 padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                                 child: Column(

                                   children: <Widget>[
                                     Container(
                                       alignment: Alignment.topLeft,
                                       child: Text('WHEY PROTEINS',
                                         textAlign: TextAlign.start,
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 13,
                                             fontWeight: FontWeight.bold
                                         ),),
                                     ),
                                     Container(
                                       alignment: Alignment.topLeft,
                                       child: Text("UPTO 61% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                     ),
                                     Image.asset(
                                       "./assets/images/chocolate.png",
                                       scale: 5,
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
                                   Container(
                                     alignment: Alignment.topLeft,
                                     child: Text('MASS GAINER',
                                       textAlign: TextAlign.start,
                                       style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 13,
                                           fontWeight: FontWeight.bold
                                       ),),
                                   ),
                                   Container(
                                     alignment: Alignment.topLeft,
                                     child: Text("UPTO 61% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                   ),
                                   Image.asset(
                                     "./assets/images/chocolate.png",
                                     scale: 5,
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
                   padding: EdgeInsets.all(5),
                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: Container(
                           child: Card(
                             child: Container(
                               padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                               child: Column(
                                 children: <Widget>[
                                   Container(
                                     alignment: Alignment.topLeft,
                                     child: Text('ISOLATES GAIR',
                                       textAlign: TextAlign.start,
                                       style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 13,
                                           fontWeight: FontWeight.bold
                                       ),),
                                   ),
                                   Container(
                                     alignment: Alignment.topLeft,
                                     child: Text("UPTO 55% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                   ),
                                   Image.asset(
                                     "./assets/images/chocolate.png",
                                     scale: 5,
                                   ),
                                 ],
                               ),
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                         child: Container(
                           child: Card(
                             child: Container(
                               padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                               child: Column(
                                 children: <Widget>[
                                   Container(
                                     alignment: Alignment.topLeft,
                                     child: Text('IMMUNITY BOOSTER',
                                       textAlign: TextAlign.start,
                                       style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 13,
                                           fontWeight: FontWeight.bold
                                       ),),
                                   ),
                                   Container(
                                     alignment: Alignment.topLeft,
                                     child: Text("UPTO 40% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                   ),
                                   Image.asset(
                                     "./assets/images/chocolate.png",
                                     scale: 5,
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
                   padding: EdgeInsets.all(5),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Container(
                         child: Text('Brands',
                           style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                       ),
                       GestureDetector(
                         onTap: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => AllBrands()),

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

                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: Container(
                           //height: 60,

                           child: GestureDetector(
                             onTap: (){
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => SeeProduct()),

                               );
                             },
                             child: Card(
                               child: Container(
                                 padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                                 child: Column(
                                   children: <Widget>[
                                     Image.asset(
                                       "./assets/images/b2.png",
                                       scale: 3,
                                     ),
                                     Container(
                                       padding: EdgeInsets.only(top: 10),
                                       alignment: Alignment.center,
                                       child: Text('Muscle Tech',
                                         textAlign: TextAlign.start,
                                         style: TextStyle(
                                             color: Colors.black,
                                             fontSize: 13,
                                             //fontWeight: FontWeight.bold
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

                           child: GestureDetector(
                             onTap: (){
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => SeeProduct()),

                               );
                             },
                             child: Card(
                               child: Container(
                                 padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                                 child: Column(
                                   children: <Widget>[
                                     Image.asset(
                                       "./assets/images/b2.png",
                                       scale: 3,
                                     ),
                                     Container(
                                       padding: EdgeInsets.only(top: 10),
                                       alignment: Alignment.center,
                                       child: Text('TrueBasics',
                                         textAlign: TextAlign.start,
                                         style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 13,
                                           //fontWeight: FontWeight.bold
                                         ),),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ),

                         ),
                       ),


                     ],
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.all(5),

                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: Container(
                           //height: 60,

                           child: GestureDetector(
                             onTap: (){
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => SeeProduct()),

                               );
                             },
                             child: Card(
                               child: Container(
                                 padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                                 child: Column(
                                   children: <Widget>[
                                     Image.asset(
                                       "./assets/images/b2.png",
                                       scale: 3,
                                     ),
                                     Container(
                                       padding: EdgeInsets.only(top: 10),
                                       alignment: Alignment.center,
                                       child: Text('Muscle Tech',
                                         textAlign: TextAlign.start,
                                         style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 13,
                                           //fontWeight: FontWeight.bold
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

                           child: GestureDetector(
                             onTap: (){
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => SeeProduct()),

                               );
                             },
                             child: Card(
                               child: Container(
                                 padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                                 child: Column(
                                   children: <Widget>[
                                     Image.asset(
                                       "./assets/images/b2.png",
                                       scale: 3,
                                     ),
                                     Container(
                                       padding: EdgeInsets.only(top: 10),
                                       alignment: Alignment.center,
                                       child: Text('TrueBasics',
                                         textAlign: TextAlign.start,
                                         style: TextStyle(
                                           color: Colors.black,
                                           fontSize: 13,
                                           //fontWeight: FontWeight.bold
                                         ),),
                                     ),
                                   ],
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),
                     ],
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.all(5),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Container(
                         child: Text('Gender',
                           style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                       ),
                     /*  Container(
                         padding: EdgeInsets.only(left: 8,right: 8,top: 4,bottom: 4),
                         //color: Color(0xFF06588F),
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           color: Color(0xFF06588F),
                           *//*boxShadow: [
                             BoxShadow(color: Colors.green, spreadRadius: 3),
                           ],*//*
                         ),
                         child: Text('See All',style: TextStyle(color: Colors.white),),
                       )*/
                     ],
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.all(5),
                   child: Row(
                     children: <Widget>[
                       Expanded(
                         child: GestureDetector(
                           onTap: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => Category()),

                             );
                           },
                           child: Container(
                             height: 60,
                             child: Card(
                               child: Container(
                                 padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                                 child: Container(
                                   alignment: Alignment.center,
                                   child: Text('Men',
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 16,
                                         //fontWeight: FontWeight.bold
                                     ),),
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),
                       Expanded(
                         child: GestureDetector(
                           onTap: (){
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => Women()),

                             );
                           },
                           child: Container(
                             height: 60,
                             child: Card(
                               child: Container(
                                 padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                                 child: Container(
                                   alignment: Alignment.center,
                                   child: Text('Women',
                                     textAlign: TextAlign.center,
                                     style: TextStyle(
                                         color: Colors.black,
                                         fontSize: 16,
                                         //fontWeight: FontWeight.bold
                                     ),),
                                 ),
                               ),
                             ),
                           ),
                         ),
                       ),

                     ],
                   ),
                 )
               ],
             ),
           ),
         ),

    );
  }
}

class FunkyOverlay extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => FunkyOverlayState();
}

class FunkyOverlayState extends State<FunkyOverlay>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> scaleAnimation;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
    scaleAnimation =
        CurvedAnimation(parent: controller, curve: Curves.elasticInOut);

    controller.addListener(() {
      setState(() {});
    });

    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: ScaleTransition(
          scale: scaleAnimation,
          child: Container(
            height: 150,
            width: 250,
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0))),
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget>[
                Container(
                  padding: const EdgeInsets.all(15),
                  child: Text('Select Gender',style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                  Container(
                    padding: const EdgeInsets.only(left: 15,top: 10),
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Category()),

                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 15,top: 0),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                padding: const EdgeInsets.only(top: 10,left: 15,right: 15,bottom: 10),
                                child: Text('Men',style: TextStyle(
                                  fontSize: 15,


                                ),),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Women()),

                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.only(left: 15,top: 0),
                            child: Card(
                              elevation: 5,
                              child: Container(
                                padding: const EdgeInsets.only(top: 10,left: 15,right: 15,bottom: 10),
                                child: Text('Women',style: TextStyle(
                                  fontSize: 15,

                                ),),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )

              ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}