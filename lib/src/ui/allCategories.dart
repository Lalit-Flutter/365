import 'package:days365app/src/ui/seeproduct.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';


import 'package:days365app/src/ui/address.dart';
import 'package:days365app/src/ui/cart.dart';
import 'package:days365app/src/ui/searchbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'mic.dart';
import 'Drawer/drawer.dart';

class AllCategories extends StatefulWidget {
  AllCategories({ Key key }) : super(key: key);
  @override
  _AllCategoriesState createState() => _AllCategoriesState();
}
class _AllCategoriesState extends State<AllCategories> {
  File panimageFile;
  bool _alreadySaved;
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
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SeeProduct()),

            );
          },
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(5),
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

                                Container(
                                  alignment: Alignment.topRight,
                                  child: Text("UPTO 61% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Image.asset(
                                  "./assets/images/chocolate.png",
                                  scale: 3,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('WHEY PROTEINS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 5,top: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(" Premium Member UPTO 70% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Align(
                                  alignment:Alignment.topLeft,
                                  child:SmoothStarRating(
                                    allowHalfRating:false,
                                    starCount:5,
                                    //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                                    size: 14.0,
                                    isReadOnly:false,
                                    color: Color(0xFFFf9933),
                                    borderColor:Colors.black,
                                    filledIconData:Icons.star,
                                    halfFilledIconData:Icons.star_half,
                                    defaultIconData:Icons.star_border,
                                    spacing: .5,
                                  ),
                                )
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

                                Container(
                                  alignment: Alignment.topRight,
                                  child: Text("UPTO 61% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Image.asset(
                                  "./assets/images/chocolate.png",
                                  scale: 3,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('MASS GAINER',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 5,top: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(" Premium Member UPTO 70% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Align(
                                  alignment:Alignment.topLeft,
                                  child:SmoothStarRating(
                                    allowHalfRating:false,
                                    starCount:5,
                                    //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                                    size: 14.0,
                                    isReadOnly:false,
                                    color: Color(0xFFFf9933),
                                    borderColor:Colors.black,
                                    filledIconData:Icons.star,
                                    halfFilledIconData:Icons.star_half,
                                    defaultIconData:Icons.star_border,
                                    spacing: .5,
                                  ),
                                )
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
                        //height: 60,

                        child: Card(
                          child: Container(
                            padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                            child: Column(

                              children: <Widget>[

                                Container(
                                  alignment: Alignment.topRight,
                                  child: Text("UPTO 61% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Image.asset(
                                  "./assets/images/chocolate.png",
                                  scale: 3,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('WHEY PROTEINS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 5,top: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(" Premium Member UPTO 70% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Align(
                                  alignment:Alignment.topLeft,
                                  child:SmoothStarRating(
                                    allowHalfRating:false,
                                    starCount:5,
                                    //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                                    size: 14.0,
                                    isReadOnly:false,
                                    color: Color(0xFFFf9933),
                                    borderColor:Colors.black,
                                    filledIconData:Icons.star,
                                    halfFilledIconData:Icons.star_half,
                                    defaultIconData:Icons.star_border,
                                    spacing: .5,
                                  ),
                                )
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

                                Container(
                                  alignment: Alignment.topRight,
                                  child: Text("UPTO 61% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Image.asset(
                                  "./assets/images/chocolate.png",
                                  scale: 3,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('MASS GAINER',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 5,top: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(" Premium Member UPTO 70% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Align(
                                  alignment:Alignment.topLeft,
                                  child:SmoothStarRating(
                                    allowHalfRating:false,
                                    starCount:5,
                                    //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                                    size: 14.0,
                                    isReadOnly:false,
                                    color: Color(0xFFFf9933),
                                    borderColor:Colors.black,
                                    filledIconData:Icons.star,
                                    halfFilledIconData:Icons.star_half,
                                    defaultIconData:Icons.star_border,
                                    spacing: .5,
                                  ),
                                )
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
                        //height: 60,

                        child: Card(
                          child: Container(
                            padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                            child: Column(

                              children: <Widget>[

                                Container(
                                  alignment: Alignment.topRight,
                                  child: Text("UPTO 61% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Image.asset(
                                  "./assets/images/chocolate.png",
                                  scale: 3,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('WHEY PROTEINS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 5,top: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(" Premium Member UPTO 70% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Align(
                                  alignment:Alignment.topLeft,
                                  child:SmoothStarRating(
                                    allowHalfRating:false,
                                    starCount:5,
                                    //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                                    size: 14.0,
                                    isReadOnly:false,
                                    color: Color(0xFFFf9933),
                                    borderColor:Colors.black,
                                    filledIconData:Icons.star,
                                    halfFilledIconData:Icons.star_half,
                                    defaultIconData:Icons.star_border,
                                    spacing: .5,
                                  ),
                                )
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

                                Container(
                                  alignment: Alignment.topRight,
                                  child: Text("UPTO 61% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Image.asset(
                                  "./assets/images/chocolate.png",
                                  scale: 3,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('MASS GAINER',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 5,top: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(" Premium Member UPTO 70% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Align(
                                  alignment:Alignment.topLeft,
                                  child:SmoothStarRating(
                                    allowHalfRating:false,
                                    starCount:5,
                                    //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                                    size: 14.0,
                                    isReadOnly:false,
                                    color: Color(0xFFFf9933),
                                    borderColor:Colors.black,
                                    filledIconData:Icons.star,
                                    halfFilledIconData:Icons.star_half,
                                    defaultIconData:Icons.star_border,
                                    spacing: .5,
                                  ),
                                )
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
                        //height: 60,

                        child: Card(
                          child: Container(
                            padding:EdgeInsets.fromLTRB(8, 2, 5, 2),
                            child: Column(

                              children: <Widget>[

                                Container(
                                  alignment: Alignment.topRight,
                                  child: Text("UPTO 61% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Image.asset(
                                  "./assets/images/chocolate.png",
                                  scale: 3,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('WHEY PROTEINS',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 5,top: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(" Premium Member UPTO 70% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Align(
                                  alignment:Alignment.topLeft,
                                  child:SmoothStarRating(
                                    allowHalfRating:false,
                                    starCount:5,
                                    //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                                    size: 14.0,
                                    isReadOnly:false,
                                    color: Color(0xFFFf9933),
                                    borderColor:Colors.black,
                                    filledIconData:Icons.star,
                                    halfFilledIconData:Icons.star_half,
                                    defaultIconData:Icons.star_border,
                                    spacing: .5,
                                  ),
                                )
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

                                Container(
                                  alignment: Alignment.topRight,
                                  child: Text("UPTO 61% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Image.asset(
                                  "./assets/images/chocolate.png",
                                  scale: 3,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: Text('MASS GAINER',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(bottom: 5,top: 10),
                                  alignment: Alignment.topLeft,
                                  child: Text(" Premium Member UPTO 70% OFF",style: TextStyle(color: Colors.green,fontSize: 9,fontWeight: FontWeight.bold),),
                                ),
                                Align(
                                  alignment:Alignment.topLeft,
                                  child:SmoothStarRating(
                                    allowHalfRating:false,
                                    starCount:5,
                                    //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                                    size: 14.0,
                                    isReadOnly:false,
                                    color: Color(0xFFFf9933),
                                    borderColor:Colors.black,
                                    filledIconData:Icons.star,
                                    halfFilledIconData:Icons.star_half,
                                    defaultIconData:Icons.star_border,
                                    spacing: .5,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
