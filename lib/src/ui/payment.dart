import 'package:flutter/material.dart';
class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFADBD2E),
            title: Text('Payment')
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
                        padding: EdgeInsets.all(13),
                        child: Row(
                           children: <Widget>[
                             Container(
                                 child: Icon(Icons.account_balance_wallet_rounded,size: 26,color: Color(0xFFADBD2E),)),
                             Container(
                                 padding: EdgeInsets.only(left: 10),
                                 child: Text('CREDIT CARD',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
                             Container(
                                 padding: EdgeInsets.only(left: 5),
                                 child: Text('Visa/ Master/ Rupay')),
                           ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        child: Row(
                          children: <Widget>[
                            Container(
                                child: Icon(Icons.account_balance_wallet_rounded,size: 26,color: Color(0xFFADBD2E),)),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('DEBIT CARD',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
                            Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text('Visa/ Master/ Rupay')),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        child: Row(
                          children: <Widget>[
                            Container(
                                child: Icon(Icons.account_balance_wallet_rounded,size: 26,color: Color(0xFFADBD2E),)),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('INTERNET BANKING',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),
                            Container(
                                padding: EdgeInsets.only(left: 5),
                                child: Text('All banks supported')),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        child: Row(
                          children: <Widget>[
                            Container(
                                child: Icon(Icons.account_balance_wallet_rounded,size: 26,color: Color(0xFFADBD2E),)),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('EMI',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),

                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        child: Row(
                          children: <Widget>[
                            Container(
                                child: Icon(Icons.account_balance_wallet_rounded,size: 26,color: Color(0xFFADBD2E),)),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('WALLET',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),

                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Container(
                        padding: EdgeInsets.all(13),
                        child: Row(
                          children: <Widget>[
                            Container(
                                child: Icon(Icons.account_balance_wallet_rounded,size: 26,color: Color(0xFFADBD2E),)),
                            Container(
                                padding: EdgeInsets.only(left: 10),
                                child: Text('GOOGLE PAY',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),)),

                          ],
                        ),
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