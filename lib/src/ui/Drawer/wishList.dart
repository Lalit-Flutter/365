import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';

import '../mic.dart';
import '../searchBar.dart';
import 'drawer.dart';

class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {

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
      //drawer: Dbar(),
      backgroundColor: Color(0xFFADBD2E),
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
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(15, 10, 10, 5),
                        child: Text('Save Time',style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                          fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                        child: Text('Add your items and ideas in one convenient location',style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,

                        ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Divider(color: Colors.grey[400],),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(15, 10, 10, 5),
                        child: Text('Give great gifts',style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                        child: Text('Remember your friend`s lists and share yours',style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,

                        ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Divider(color: Colors.grey[400],),
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(15, 10, 10, 5),
                        child: Text('Check price changes',style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                        child: Text('Check  when items from your lists drop in price',style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,

                        ),),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Divider(color: Colors.grey[400],),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(Icons.home,color: Colors.red,),
                    title: Text('Baby Wish List',style: TextStyle(
                      fontSize: 15
                    ),),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                Container(
                  child: Divider(color: Colors.grey[400],),
                ),
                Container(
                  child: ListTile(
                    leading: Icon(Icons.home,color: Colors.red,),
                    title: Text('Find a Wish List',style: TextStyle(
                        fontSize: 15
                    ),),
                    trailing: Icon(Icons.keyboard_arrow_right),
                  ),
                ),
                Container(
                  child: Divider(color: Colors.grey[400],),
                ),

                Container(
                  //width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(1.0),
                          side: BorderSide(color: Colors.orange)),
                      onPressed: () {
                        /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );*/
                      },
                      color: Colors.amber,
                      textColor: Colors.black,
                      child: Text("Create a List",
                          style: TextStyle(fontSize: 16)),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}