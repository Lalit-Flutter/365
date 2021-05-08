
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          new Container(
            alignment: Alignment.bottomCenter,
            height:50,
            child: new DrawerHeader(
              child: Text('menu',style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  color: Colors.grey[800]
              ),),
            ),
            color: Colors.tealAccent,
          ),
          Container (
            padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
            child: Text('Settings',style: TextStyle(
                fontSize: 24
            ),),
          ),
          GestureDetector(
            /*onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },*/
            child: Container (
              padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: Text('Change Country',style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          GestureDetector(
            /*  onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopByCategory()),
              );
            },*/
            child: Container (
              padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: Text('Notifications',style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          GestureDetector(
            /* onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TodayDeals()),
              );
            },*/
            child: Container (
              padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: Text('Permissions',style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),

          GestureDetector(
            /*onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => YourOrders()),
              );
            },*/
            child: Container (
              padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: Text('Default Purchase Settings',style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          GestureDetector(
            /*onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BuyAgain()),
              );
            },*/
            child: Container (
              padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: Text('Legal & About',style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          Container(
            child: Divider(
              color: Colors.grey[400],
            ),
          ),
          GestureDetector(
            /* onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => WishList()),
              );
            },*/
            child: Container (
              padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: Text('Switch Accounts',style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          GestureDetector(
            /* onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Account()),
              );
            },*/
            child: Container (
              padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: Text('Sign Out',style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
        ],
      ),
    );
  }
}
