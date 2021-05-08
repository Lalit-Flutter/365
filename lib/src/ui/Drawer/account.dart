import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:days365app/src/ui/mic.dart';
import 'package:days365app/src/ui/searchbar.dart';
class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
       // drawer: Dbar(),
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
              padding: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Text('Orders',style: TextStyle(
                fontSize: 18.5,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey[400],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Your Orders',style: TextStyle(
                    fontSize: 16
                  ),),
                  Icon(Icons.chevron_right_outlined)
                ],
              )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Subscribe & Save',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Text('Account Settings',style: TextStyle(
                fontSize: 18.5,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Login & security',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Switch Accounts',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Your Address',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Login With Days365',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Content and devices',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Manage Your Profile',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Default Purchase Settings',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Manage Prime membership',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Memberships & Subscriptions',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Manage Your Seller Account',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Your Days365 Business Account',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Review Your Purchases',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Your Recently Viewed Items',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('SMS alerts preferences',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Photo ID proofs',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Text('Days365 Pay',style: TextStyle(
                fontSize: 18.5,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Days365 Pay UPI',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Top-up your Days365 pay balance',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('View Days365 pay balance statement',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Add Gift Card to your balance',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Manage payment options',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Text('Message center',style: TextStyle(
                fontSize: 18.5,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Your Massage',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Deals Notifications',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Text('Personalization',style: TextStyle(
                fontSize: 18.5,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Wish List',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Profile',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Shop the Kids Store by age',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.topLeft,
              child: Text('App Preferences',style: TextStyle(
                fontSize: 18.5,
                color: Colors.grey[800],
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Manage voice Recordings',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Manage Days365 App Camera Images',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
            Container(
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[400],
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Advertising Preferences',style: TextStyle(
                        fontSize: 16
                    ),),
                    Icon(Icons.chevron_right_outlined)
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }
}