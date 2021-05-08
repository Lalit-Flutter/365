import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:flutter/material.dart';
import 'cart.dart';
import 'dart:io';
import 'dart:async';
import 'package:days365app/src/ui/address.dart';
import 'package:days365app/src/ui/cart.dart';
import 'package:days365app/src/ui/searchbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'mic.dart';
import 'Drawer/drawer.dart';

class DetailProduct extends StatefulWidget {
  @override
  _DetailProductState createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProduct> {
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

  @override
  Widget build(BuildContext context) {
    var index;
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
      body: Container(
       /* height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,*/
        color: Color(0xFFADBD2E),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
              /*  Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(5),
                  child: Text('Men > Tshirt',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white,fontStyle: FontStyle.italic,),),
                ),*/
                Container(padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
                  //height: 200,
                  child: Card(
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(10)),
                                            side: BorderSide(color: Colors.white)),
                                        elevation: 2,
                                        child: Container(
                                          padding: EdgeInsets.all(5),
                                          child: Image.asset(
                                            "./assets/images/chocolate.png",
                                            scale: 5,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Row(
                                        children: <Widget>[
                                          Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(5),
                                                    bottomLeft: Radius.circular(5)),
                                                side: BorderSide(color: Colors.white)),
                                            elevation: 2,
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                              child: Image.asset(
                                                "./assets/images/chocolate.png",
                                                scale: 25,
                                              ),
                                            ),
                                          ),
                                          Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(5),
                                                    bottomLeft: Radius.circular(5)),
                                                side: BorderSide(color: Colors.white)),
                                            elevation: 2,
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                              child: Image.asset(
                                                "./assets/images/chocolate.png",
                                                scale: 25,
                                              ),
                                            ),
                                          ),
                                          Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(5),
                                                    bottomLeft: Radius.circular(5)),
                                                side: BorderSide(color: Colors.white)),
                                            elevation: 2,
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                              child: Image.asset(
                                                "./assets/images/chocolate.png",
                                                scale: 25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      child: Row(
                                        children: <Widget>[
                                          Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(5),
                                                    bottomLeft: Radius.circular(5)),
                                                side: BorderSide(color: Colors.white)),
                                            elevation: 2,
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                              child: Image.asset(
                                                "./assets/images/chocolate.png",
                                                scale: 25,
                                              ),
                                            ),
                                          ),
                                          Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(5),
                                                    bottomLeft: Radius.circular(5)),
                                                side: BorderSide(color: Colors.white)),
                                            elevation: 2,
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                              child: Image.asset(
                                                "./assets/images/chocolate.png",
                                                scale: 25,
                                              ),
                                            ),
                                          ),
                                          Card(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    bottomRight: Radius.circular(5),
                                                    bottomLeft: Radius.circular(5)),
                                                side: BorderSide(color: Colors.white)),
                                            elevation: 2,
                                            child: Container(
                                              padding: EdgeInsets.all(5),
                                              child: Image.asset(
                                                "./assets/images/chocolate.png",
                                                scale: 25,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding: EdgeInsets.only(top: 20,right: 0),
                                      child: Text('Price',style: TextStyle(color: Colors.black,fontSize: 16,
                                          fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding: EdgeInsets.only(top: 15,right: 0),
                                      child: Text('MRP',style: TextStyle(color: Colors.black,fontSize: 16,
                                          fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding: EdgeInsets.only(top: 15,right: 0),
                                      child: Text('Delivery',style: TextStyle(color: Colors.black,fontSize: 16,
                                          fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                    ),
                                    Container(
                                      alignment: Alignment.topLeft,
                                      padding: EdgeInsets.only(top: 15,right: 0),
                                      child: Text('Return Policy',style: TextStyle(color: Color(0xFF06588F),fontSize: 17,
                                          fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        child: Text('Product Name',style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text('Colours',style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                                child: ClipOval(
                                                  child: Material(
                                                    color: Colors.grey[400], // button color
                                                    child: InkWell(
                                                      //splashColor: Colors.red, // inkwell color
                                                      child: SizedBox(width: 18, height: 18,),
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                )
                                            ),
                                            Container(
                                                padding: EdgeInsets.only(left: 5),
                                                child: ClipOval(
                                                  child: Material(
                                                    color: Colors.blue, // button color
                                                    child: InkWell(
                                                      //splashColor: Colors.red, // inkwell color
                                                      child: SizedBox(width: 18, height: 18,),
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                )
                                            ),
                                            Container(
                                                padding: EdgeInsets.only(left: 5),
                                                child: ClipOval(
                                                  child: Material(
                                                    color: Colors.pink, // button color
                                                    child: InkWell(
                                                      //splashColor: Colors.red, // inkwell color
                                                      child: SizedBox(width: 18, height: 18,),
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                )
                                            ),
                                            Container(
                                                padding: EdgeInsets.only(left: 5),
                                                child: ClipOval(
                                                  child: Material(
                                                    color: Colors.yellow, // button color
                                                    child: InkWell(
                                                      //splashColor: Colors.red, // inkwell color
                                                      child: SizedBox(width: 18, height: 18,),
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                )
                                            ),
                                            Container(
                                                padding: EdgeInsets.only(left: 5),
                                                child: ClipOval(
                                                  child: Material(
                                                    color: Color(0xFFFf9933), // button color
                                                    child: InkWell(
                                                      //splashColor: Colors.red, // inkwell color
                                                      child: SizedBox(width: 18, height: 18,),
                                                      onTap: () {},
                                                    ),
                                                  ),
                                                )
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 10),
                                        child: Text('Size',style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 5),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              margin: const EdgeInsets.only(left:0),
                                              padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black)
                                              ),
                                              child: Text('S'),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(left:5),
                                              padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black)
                                              ),
                                              child: Text('M'),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(left:5),
                                              padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black)
                                              ),
                                              child: Text('L'),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(left:5),
                                              padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black)
                                              ),
                                              child: Text('XL'),
                                            ),
                                            Container(
                                              margin: const EdgeInsets.only(left:5),
                                              padding: const EdgeInsets.fromLTRB(5, 3, 5, 3),
                                              decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.black)
                                              ),
                                              child: Text('XXL'),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Text('Product Description',style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 20,right: 10),
                                        child: Text('Volume: Wax Coating & special bristles that can reach the lash line up to the tip Gives 75% curled effect with a thickpad and lasts 3 time longer with the 18 hour formula ',style: TextStyle(
                                            fontSize: 11,
                                            letterSpacing: 0.7,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey[700]
                                        ),),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Text('Design: unique anti- clump application brush that sapreated each lash while cruling them, avoiding the ',style: TextStyle(
                                            fontSize: 11,
                                            letterSpacing: 0.7,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.grey[700]
                                        ),),
                                      ),
                                      Container(
                                        padding: EdgeInsets.only(top: 20),
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              child: Text('Review',style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  letterSpacing: 0.5
                                              ),),
                                            ),
                                            Align(
                                              alignment:Alignment.topLeft,
                                              child:SmoothStarRating(
                                                allowHalfRating:false,
                                                starCount:5,
                                                //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                                                size: 18.0,
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
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          //height:40,
                          width: MediaQuery.of(context).size.width,
                          child: RaisedButton(
                            child: new Text('Add  To Cart',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),),
                            textColor: Colors.white,
                            color: Color(0xFFFf9933),
                            onPressed: () => {
                              setState(() {
                                      Navigator.push(
                                            context,
                                       MaterialPageRoute(builder: (context) => Cart()),

                                         );
                                   })
                            },

                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );


  }
}

