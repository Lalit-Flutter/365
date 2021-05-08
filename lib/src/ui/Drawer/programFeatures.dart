import 'package:flutter/material.dart';

class ProgramFeatures extends StatefulWidget {
  @override
  _ProgramFeaturesState createState() => _ProgramFeaturesState();
}

class _ProgramFeaturesState extends State<ProgramFeatures> {
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
            child: Text('Programs and Features',style: TextStyle(
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
              child: Text('Alexa Shopping List',style: TextStyle(
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
              child: Text('Days365 Academy',style: TextStyle(
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
              child: Text('Days365 Business',style: TextStyle(
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
              child: Text('Days365 Family',style: TextStyle(
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
              child: Text('Days365 Fresh',style: TextStyle(
                  fontSize: 16
              ),),
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
              child: Text('Days365 Launchpad',style: TextStyle(
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
              child: Text('Days365 Pantry',style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          GestureDetector(
           /* onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Days365Pay()),
              );
            },*/
            child: Container (
              padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: Text('Days365 Renewed',style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          GestureDetector(
           /* onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Prime()),
              );
            },*/
            child: Container (
              padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: Text('Days365 Coupons',style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          GestureDetector(
            /*onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SellDays365()),
              );
            },*/
            child: Container (
              padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
              child: Text('Clearance Store',style: TextStyle(
                  fontSize: 16
              ),),
            ),
          ),
          Container (
            padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
            child: Text('#FounditOnDays365',style: TextStyle(
                fontSize: 16
            ),),
          ),
          Container (
            padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
            child: Text('FunZone',style: TextStyle(
                fontSize: 16
            ),),
          ),

          Container (
            padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
            child: Text('Gift Finder ',style: TextStyle(
                fontSize: 16
            ),),
          ),
          Container (
            padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
            child: Text('Kindle Unlimited',style: TextStyle(
                fontSize: 16
            ),),
          ),
          Container (
            padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
            child: Text('Subscribe & Save',style: TextStyle(
                fontSize: 16
            ),),
          ),
          Container (
            padding: EdgeInsets.fromLTRB(40, 20, 0, 10),
            child: Text('Your Recommendations',style: TextStyle(
                fontSize: 16
            ),),
          ),
        ],
      ),
    );
  }
}
