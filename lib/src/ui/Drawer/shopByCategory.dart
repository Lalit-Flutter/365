
import 'package:flappy_search_bar/flappy_search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../cart.dart';
import '../mic.dart';

class ShopByCategory extends StatefulWidget {
  @override
  _ShopByCategoryState createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
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
     // drawer: Dbar(),
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
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.all(20),
              child: Text('Explore all Categories',
              style: TextStyle(
                fontSize: 20
              ),),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Echo & Alexa',style: TextStyle(
                  color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Fire TV Stick',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Kindle E-Readers & eBooks',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Days365 Prime Video',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Days365 Prime Music',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Mobiles, Computer',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ), Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('TV, Applications, Electronic',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ), Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Men`s Fashion',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ), Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Women`s Fashion',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ), Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Home, Kitchen,Pets, Furniture',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Grocery & Household supplies',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Beauty, Health',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Sports, Fitness, Bags, Luggage',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Toy`s Baby Products, kid`s Fashion',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Car, Motorbike, Industrial',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Books & Audible',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Gaming, Softwere, Music & Movies',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Recharges & Bill Payments',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Movies & Travel tickets',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Insurance',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Gift Cards',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
            Container(
              child: ListTile(
                leading: Icon(Icons.military_tech_outlined,size: 26,),
                title: Text('Art, Handicraft, Collectible',style: TextStyle(
                    color: Colors.black
                ),),
                trailing: Icon(Icons.chevron_right),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


