
import 'package:flutter/material.dart';
import 'payment.dart';
class Shipping extends StatefulWidget {
  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Color(0xFFADBD2E),
            title: Text('Shipping')
        ),
        body: Stack(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text('Subtotal',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                            ),),
                          ),
                          Container(
                            child: Text('Rs 7,5000',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 1.5,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text('Shipping Charges',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                          ),
                          Container(
                            child: Text('Rs 7,5000',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 1.5,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text('You Saved',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                          ),
                          Container(
                            child: Text('Rs 7,5000',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 1.5,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Text('Total',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                          ),
                          Container(
                            child: Text('Rs 7,5000',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20
                            ),),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Divider(
                        color: Colors.grey[400],
                        thickness: 1.5,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Container(
                                  child: Text('Shipping Address',style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18
                                  ),),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 5),
                                  child: Text('Edit',style: TextStyle(
                                      color: Colors.blueAccent,
                                      //fontWeight: FontWeight.bold,
                                      fontSize: 16
                                  ),),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Text('Change',style: TextStyle(
                                color: Colors.blueAccent,
                                //fontWeight: FontWeight.bold,
                                fontSize: 16
                            ),),
                          )
                        ],
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

                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      color:   Color(0xFFADBD2E),
                      child: Column(
                        children: <Widget>[

                          Container(
                             padding: EdgeInsets.only(top: 10,bottom: 10,),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[

                                GestureDetector(
                                  onTap: (){
                                   /* Navigator.push<Widget>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Shipping(),
                                      ),
                                    );*/
                                  },
                                  child: Container(
                                   // margin: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFF06588F),
                                    ),
                                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                                    child: Text('Previous',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                     Navigator.push<Widget>(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Payment(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    // margin: EdgeInsets.only(top: 20),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xFF06588F),
                                    ),
                                    padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                                    child: Text('Checkout',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold
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
