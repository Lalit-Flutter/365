
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'cart.dart';
import 'mic.dart';
import 'detail_product.dart';

class SeeProduct extends StatefulWidget {
  @override
  _SeeProductState createState() => _SeeProductState();
}

class _SeeProductState extends State<SeeProduct> {
 /* static detailpro(BuildContext context) {

    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (context) => Wrap(children: [DetailProduct()]),
    );
  }*/
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
      body:SingleChildScrollView(
child: Container(
  child: Column(
    children: <Widget>[
      GestureDetector(
        onTap: (){
          //detailpro(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailProduct()),

          );
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Card(
              elevation: 2,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      "./assets/images/chocolate.png",
                      scale: 8,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10,bottom: 0),
                          child: Row(

                            children: <Widget>[
                              Container(
                                child: Text('MuscleBlaze Biozyme Performance',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),

                            ],
                          ),
                        ),
                        Container(

                          padding: EdgeInsets.only(top: 3),
                          child: Text('Whey - 4.4 lb,Rich Chocolate',style: TextStyle(fontSize: 11),),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          alignment:Alignment.topLeft,
                          child:SmoothStarRating(
                            allowHalfRating:false,
                            starCount:5,
                            //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                            size: 15.0,
                            isReadOnly:false,
                            color: Color(0xFFFf9933),
                            borderColor:Colors.black,
                            filledIconData:Icons.star,
                            halfFilledIconData:Icons.star_half,
                            defaultIconData:Icons.star_border,
                            spacing: .5,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 5,bottom: 5),
                                //alignment: Alignment.topRight,
                                child: Text("\u{20B9}${310}",style: TextStyle(
                                  // decoration: TextDecoration.lineThrough,
                                    color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                //alignment: Alignment.topRight,
                                margin: EdgeInsets.only(left: 5),
                                child: Text("799",style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey[400],fontSize: 15,),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                alignment: Alignment.topLeft,
                                child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 12,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5,bottom: 10),
                          //margin: EdgeInsets.only(left: 5),
                          alignment: Alignment.topLeft,
                          child: Text("Primum Member Price: \u{20B9}${280}",style: TextStyle(color: Colors.green,fontSize: 12,),),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                //width: 150,
                                child: RaisedButton(
                                  child: new Text('Quick Buy',style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                      fontSize: 10
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
                              ),Container(
                                //width: 150,
                                padding: EdgeInsets.only(left: 10),
                                child: RaisedButton(
                                  child: new Text('Add to Card',style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                      fontSize: 10
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
                        )
                      ],
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
      GestureDetector(
        onTap: (){
          //detailpro(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailProduct()),

          );
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Card(
              elevation: 2,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      "./assets/images/chocolate.png",
                      scale: 8,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10,bottom: 0),
                          child: Row(

                            children: <Widget>[
                              Container(
                                child: Text('MuscleBlaze Biozyme Performance',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),

                            ],
                          ),
                        ),
                        Container(

                          padding: EdgeInsets.only(top: 3),
                          child: Text('Whey - 4.4 lb,Rich Chocolate',style: TextStyle(fontSize: 11),),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          alignment:Alignment.topLeft,
                          child:SmoothStarRating(
                            allowHalfRating:false,
                            starCount:5,
                            //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                            size: 15.0,
                            isReadOnly:false,
                            color: Color(0xFFFf9933),
                            borderColor:Colors.black,
                            filledIconData:Icons.star,
                            halfFilledIconData:Icons.star_half,
                            defaultIconData:Icons.star_border,
                            spacing: .5,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 5,bottom: 5),
                                //alignment: Alignment.topRight,
                                child: Text("\u{20B9}${310}",style: TextStyle(
                                  // decoration: TextDecoration.lineThrough,
                                    color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                //alignment: Alignment.topRight,
                                margin: EdgeInsets.only(left: 5),
                                child: Text("799",style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey[400],fontSize: 15,),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                alignment: Alignment.topLeft,
                                child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 12,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5,bottom: 10),
                          //margin: EdgeInsets.only(left: 5),
                          alignment: Alignment.topLeft,
                          child: Text("Primum Member Price: \u{20B9}${280}",style: TextStyle(color: Colors.green,fontSize: 12,),),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                //width: 150,
                                child: RaisedButton(
                                  child: new Text('Quick Buy',style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                      fontSize: 10
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
                              ),Container(
                                //width: 150,
                                padding: EdgeInsets.only(left: 10),
                                child: RaisedButton(
                                  child: new Text('Add to Card',style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                      fontSize: 10
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
                        )
                      ],
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
      GestureDetector(
        onTap: (){
          //detailpro(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailProduct()),

          );
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Card(
              elevation: 2,
              child: Row(
                children: <Widget>[
                  Container(
                    child: Image.asset(
                      "./assets/images/chocolate.png",
                      scale: 8,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(top: 10,bottom: 0),
                          child: Row(

                            children: <Widget>[
                              Container(
                                child: Text('MuscleBlaze Biozyme Performance',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),

                            ],
                          ),
                        ),
                        Container(

                          padding: EdgeInsets.only(top: 3),
                          child: Text('Whey - 4.4 lb,Rich Chocolate',style: TextStyle(fontSize: 11),),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5),
                          alignment:Alignment.topLeft,
                          child:SmoothStarRating(
                            allowHalfRating:false,
                            starCount:5,
                            //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                            size: 15.0,
                            isReadOnly:false,
                            color: Color(0xFFFf9933),
                            borderColor:Colors.black,
                            filledIconData:Icons.star,
                            halfFilledIconData:Icons.star_half,
                            defaultIconData:Icons.star_border,
                            spacing: .5,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(top: 5,bottom: 5),
                                //alignment: Alignment.topRight,
                                child: Text("\u{20B9}${310}",style: TextStyle(
                                  // decoration: TextDecoration.lineThrough,
                                    color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                              ),
                              Container(
                                //alignment: Alignment.topRight,
                                margin: EdgeInsets.only(left: 5),
                                child: Text("799",style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey[400],fontSize: 15,),),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                alignment: Alignment.topLeft,
                                child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 12,fontWeight: FontWeight.bold),),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5,bottom: 10),
                          //margin: EdgeInsets.only(left: 5),
                          alignment: Alignment.topLeft,
                          child: Text("Primum Member Price: \u{20B9}${280}",style: TextStyle(color: Colors.green,fontSize: 12,),),
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                //width: 150,
                                child: RaisedButton(
                                  child: new Text('Quick Buy',style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                      fontSize: 10
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
                              ),Container(
                                //width: 150,
                                padding: EdgeInsets.only(left: 10),
                                child: RaisedButton(
                                  child: new Text('Add to Card',style: TextStyle(
                                    //fontWeight: FontWeight.bold,
                                      fontSize: 10
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
                        )
                      ],
                    ),
                  ),
                ],
              )
          ),
        ),
      ),
      GestureDetector(
        onTap: (){
          //detailpro(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => DetailProduct()),

          );
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Card(
            elevation: 2,
            child: Row(
              children: <Widget>[
                Container(
                  child: Image.asset(
                    "./assets/images/chocolate.png",
                    scale: 8,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     Container(
                       padding: EdgeInsets.only(top: 10,bottom: 0),
                       child: Row(

                         children: <Widget>[
                           Container(
                             child: Text('MuscleBlaze Biozyme Performance',style: TextStyle(fontWeight: FontWeight.bold),),
                           ),

                         ],
                       ),
                     ),
                      Container(

                        padding: EdgeInsets.only(top: 3),
                        child: Text('Whey - 4.4 lb,Rich Chocolate',style: TextStyle(fontSize: 11),),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5),
                        alignment:Alignment.topLeft,
                        child:SmoothStarRating(
                          allowHalfRating:false,
                          starCount:5,
                          //rating: adminAcceptStatusAdd[index]['rate'].toDouble(),
                          size: 15.0,
                          isReadOnly:false,
                          color: Color(0xFFFf9933),
                          borderColor:Colors.black,
                          filledIconData:Icons.star,
                          halfFilledIconData:Icons.star_half,
                          defaultIconData:Icons.star_border,
                          spacing: .5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        child: Row(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(top: 5,bottom: 5),
                              //alignment: Alignment.topRight,
                              child: Text("\u{20B9}${310}",style: TextStyle(
                                // decoration: TextDecoration.lineThrough,
                                  color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                            ),
                            Container(
                              //alignment: Alignment.topRight,
                              margin: EdgeInsets.only(left: 5),
                              child: Text("799",style: TextStyle(
                                  decoration: TextDecoration.lineThrough,
                                  color: Colors.grey[400],fontSize: 15,),),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 5),
                              alignment: Alignment.topLeft,
                              child: Text("61% off",style: TextStyle(color: Colors.green,fontSize: 12,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 5,bottom: 10),
                        //margin: EdgeInsets.only(left: 5),
                        alignment: Alignment.topLeft,
                        child: Text("Primum Member Price: \u{20B9}${280}",style: TextStyle(color: Colors.green,fontSize: 12,),),
                      ),
                      Container(
                        child: Row(
                          children: <Widget>[
                            Container(
                              //width: 150,
                              child: RaisedButton(
                                child: new Text('Quick Buy',style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                    fontSize: 10
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
                            ),Container(
                              //width: 150,
                              padding: EdgeInsets.only(left: 10),
                              child: RaisedButton(
                                child: new Text('Add to Card',style: TextStyle(
                                  //fontWeight: FontWeight.bold,
                                    fontSize: 10
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
                      )
                    ],
                  ),
                ),
              ],
            )
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
