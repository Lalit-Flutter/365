import 'package:flutter/material.dart';
import 'shipping.dart';
class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  int _n = 0;
  void add() {
    setState(() {
      _n++;
    });
  }
  void minus() {
    setState(() {
      if (_n != 0)
        _n--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color(0xFFADBD2E),
            title: Text('Cart')
        ),
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Card(
                      child: Container(
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: ListTile(
                          leading: Container(
                            child: Card(

                              child: Container(
                                padding: EdgeInsets.all(5),
                                child: Image.asset("./assets/images/chocolate.png",
                                ),
                              ),
                            ),
                          ),
                          title: Text('Product Name',style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF06588F)
                          ),),
                          subtitle: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 0,top: 10,bottom:0),
                                child: Row(
                                  children: <Widget>[
                                    Text('Rs.',style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF06588F)
                                    ),),
                                    Text('2,500',style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF06588F)
                                    ),),
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text('Rs.',style: TextStyle(
                                          fontSize: 10,
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.grey[400]
                                      ),),
                                    ),
                                    Text('2,500',style: TextStyle(
                                        fontSize: 10,
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey[400]
                                    ),),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text('Flavour : Double Rich chocolate',style: TextStyle(
                                    fontSize: 11
                                ),),
                              ),
                              Container(

                                child: Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap:minus,
                                      child: new Container(
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all( color: Color(0xFF06588F))
                                        ),
                                        child: new Icon(Icons.remove,size: 12,  color: Color(0xFF06588F)),
                                      ),
                                    ),


                                    new Text('$_n',
                                        style: new TextStyle(fontSize: 15.0, color: Color(0xFF06588F))),

                                    GestureDetector(
                                      onTap:add,
                                      child: new Container(
                                        margin: EdgeInsets.only(left: 10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all( color: Color(0xFF06588F))
                                        ),
                                        child: new Icon(Icons.add, size:12, color: Color(0xFF06588F)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          trailing: Image.asset("./assets/images/delete.png",scale: 40,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: ListTile(
                          leading: Container(
                            child: Card(

                              child: Container(
                                padding: EdgeInsets.all(5),
                                child: Image.asset("./assets/images/chocolate.png",
                                ),
                              ),
                            ),
                          ),
                          title: Text('Product Name',style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF06588F)
                          ),),
                          subtitle: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 0,top: 10,bottom:0),
                                child: Row(
                                  children: <Widget>[
                                    Text('Rs.',style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF06588F)
                                    ),),
                                    Text('2,500',style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF06588F)
                                    ),),
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text('Rs.',style: TextStyle(
                                          fontSize: 10,
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.grey[400]
                                      ),),
                                    ),
                                    Text('2,500',style: TextStyle(
                                        fontSize: 10,
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey[400]
                                    ),),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text('Flavour : Double Rich chocolate',style: TextStyle(
                                    fontSize: 11
                                ),),
                              ),
                              Container(

                                child: Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap:minus,
                                      child: new Container(
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all( color: Color(0xFF06588F))
                                        ),
                                        child: new Icon(Icons.remove,size: 12,  color: Color(0xFF06588F)),
                                      ),
                                    ),


                                    new Text('$_n',
                                        style: new TextStyle(fontSize: 15.0, color: Color(0xFF06588F))),

                                    GestureDetector(
                                      onTap:add,
                                      child: new Container(
                                        margin: EdgeInsets.only(left: 10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all( color: Color(0xFF06588F))
                                        ),
                                        child: new Icon(Icons.add, size:12, color: Color(0xFF06588F)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          trailing: Image.asset("./assets/images/delete.png",scale: 40,
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.only(top: 10,bottom: 10),
                        child: ListTile(
                          leading: Container(
                            child: Card(

                              child: Container(
                                padding: EdgeInsets.all(5),
                                child: Image.asset("./assets/images/chocolate.png",
                                ),
                              ),
                            ),
                          ),
                          title: Text('Product Name',style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF06588F)
                          ),),
                          subtitle: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.only(left: 0,top: 10,bottom:0),
                                child: Row(
                                  children: <Widget>[
                                    Text('Rs.',style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF06588F)
                                    ),),
                                    Text('2,500',style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF06588F)
                                    ),),
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text('Rs.',style: TextStyle(
                                          fontSize: 10,
                                          decoration: TextDecoration.lineThrough,
                                          color: Colors.grey[400]
                                      ),),
                                    ),
                                    Text('2,500',style: TextStyle(
                                        fontSize: 10,
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey[400]
                                    ),),
                                  ],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                child: Text('Flavour : Double Rich chocolate',style: TextStyle(
                                    fontSize: 11
                                ),),
                              ),
                              Container(

                                child: Row(
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap:minus,
                                      child: new Container(
                                        margin: EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all( color: Color(0xFF06588F))
                                        ),
                                        child: new Icon(Icons.remove,size: 12,  color: Color(0xFF06588F)),
                                      ),
                                    ),


                                    new Text('$_n',
                                        style: new TextStyle(fontSize: 15.0, color: Color(0xFF06588F))),

                                    GestureDetector(
                                      onTap:add,
                                      child: new Container(
                                        margin: EdgeInsets.only(left: 10),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(15),
                                            border: Border.all( color: Color(0xFF06588F))
                                        ),
                                        child: new Icon(Icons.add, size:12, color: Color(0xFF06588F)),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          trailing: Image.asset("./assets/images/delete.png",scale: 40,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 150),
                      //height:40,
                      width: MediaQuery.of(context).size.width,
                      child: RaisedButton(
                        child: new Text('Continue Shopping',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),),
                        textColor: Colors.white,
                        color: Color(0xFFFf9933),
                        onPressed: () => {
                         /* setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Home()),

                            );
                          })*/
                        },

                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Card(
                    child: Container(

                      height: 135,
                      width: MediaQuery.of(context).size.width,
                      color:   Color(0xFFADBD2E),
                      child: Column(
                        children: <Widget>[
                          Container(

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                border: Border.all(color: Colors.grey[400])
                            ),
                            child: ListTile(
                              leading:  Image.asset("./assets/images/coupon.png",scale: 15,
                              ),
                              title: Text('Apply Coupon',style: TextStyle(
                                  color: Colors.pinkAccent
                              ),),

                            ),
                          ),
                          Container(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  child: Column(
                                    children: <Widget>[
                                      Container(
                                        margin: EdgeInsets.only(top: 20),
                                        child: Text('Total',style: TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold
                                        ),),
                                      ),

                                      Container(
                                          padding: EdgeInsets.only(left: 10,bottom:0),
                                          child: Row(
                                              children: <Widget>[
                                                Text('Rs.',style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF06588F)
                                                ),),
                                                Text('7,500',style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                    color: Color(0xFF06588F)
                                                ),),
                                              ]
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push<Widget>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Shipping(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.indigo,
                                    ),
                                    padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
                                    child: Text('Checkout',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18
                                    ),),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
              ),
            )
          ],
        )
    );
  }
}
