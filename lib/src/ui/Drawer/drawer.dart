
import 'dart:convert';

import 'package:days365app/src/models/signup_model.dart';
import 'package:days365app/src/resources/baseapi.dart';
import 'package:days365app/src/resources/common.dart';
import 'package:days365app/src/ui/Drawer/account.dart';
import 'package:days365app/src/ui/Drawer/programFeatures.dart';
import 'package:days365app/src/ui/Drawer/sellDays365.dart';
import 'package:days365app/src/ui/Drawer/settings.dart';
import 'package:days365app/src/ui/Drawer/shopByCategory.dart';
import 'package:days365app/src/ui/Drawer/todayDeals.dart';
import 'package:days365app/src/ui/Drawer/wishList.dart';
import 'package:days365app/src/ui/Drawer/yourOrders.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home.dart';
import '../login.dart';
import 'buyAgain.dart';
import 'days365.dart';
import 'language.dart';
import 'package:http/http.dart' as http;
class DBar extends StatefulWidget {
  @override
  _DBarState createState() => _DBarState();
}

class _DBarState extends State<DBar> {
  bool _isLoading = false;
  Future signoutuser() async
  {
    String url =  BaseApi.api+"/"+"signout/user";
    final response= await http.post(url,
        headers: {"Accept": "Application/json",
          'Authorization': 'Bearer '+Common.accessToken,
        },
        body: {
          "refreshToken":Common.refreshToken,
        }
    );

    var convertedDatatoJson = jsonDecode(response.body);
    return convertedDatatoJson;
  }
  Future signoutalluser() async
  {
    String url =  BaseApi.api+"/"+"signout/user/all";
    final response= await http.post(url,
        headers: {"Accept": "Application/json",
          'Authorization': 'Bearer '+Common.accessToken,
        },
        body: {
          "refreshToken":Common.refreshToken,
        }
    );

    var convertedDatatoJson = jsonDecode(response.body);
    return convertedDatatoJson;
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFFADBD2E),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Color(0xFFADBD2E),
                width: MediaQuery.of(context).size.width * 0.85,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                    color: Color(0xFFADBD2E),
                  ),
                  accountName: Text("Lalit Sharma"),
                  accountEmail: Text("lalitsharma1205@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor:
                    Theme.of(context).platform == TargetPlatform.iOS
                        ? Color(0xFFADBD2E)
                        : Colors.white,
                    child: Text(
                      "L",
                      style: TextStyle(fontSize: 40.0),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: ListView(children: [
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/home.png',
                          color: Colors.black54,
                          scale: 26,
                        ),
                      ),
                      Container (
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text('Home',style: TextStyle(
                          fontSize: 16,
                        ),),
                      ),
                    ],

                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ShopByCategory()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/category.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text('Shop by Category',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TodayDeals()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/todaydeal.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 10),
                          child: Text('Today`s Deals',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                Container(
                  child: Divider(
                    color: Colors.grey[500],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => YourOrders()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/your orders.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text('Your Orders',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BuyAgain()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/buy again.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text('Buy Again',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WishList()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/wishlist.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text('Your Wish List',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Account()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/your account.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text('Your Account',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Days365Pay()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/day 365 pay.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text('Day`s Pay',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                     /* Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Prime()),
                    );*/
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/try prime.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text('Try Prime',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellDays365()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/sell.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text('Sell on Day`s 365',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProgramFeatures()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/programsfeatures.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text('Programs and Features',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    //register();
                    showDialog(
                        context: context,
                        builder: (_) => Dialog(
                          child: Container(
                            color: Colors.black54,
                            height: 150,
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap:()async{
                                      setState(() => _isLoading = true);
                                      SharedPreferences pref = await SharedPreferences.getInstance();
                                      pref.remove('seen');
                                      var rsp = await signoutuser();
                                      var data = rsp['data'];
                                      var error = rsp['error'];
                                      if (error == true) {
                                        print(rsp['message']);
                                        setState(() => _isLoading = false);
                                      }
                                      else {
                                        // var message = data['i'];
                                        print('hello lalit'+rsp['message']);
                                        Common.accessToken = null;
                                        Common.refreshToken = null;

                                        setState(() => _isLoading = false);
                                        setState(() {
                                          Navigator.pop(context);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Login()),
                                          );
                                        });
                                      }
                            },
                                    child: _isLoading ?
                                        CircularProgressIndicator():
                                    Container(
                                      child: Text('SignOut User',style: TextStyle(letterSpacing: 1,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17),),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap:()async{
                                     // setState(() => _isLoading = true);
                                      SharedPreferences pref = await SharedPreferences.getInstance();
                                      pref.remove('seen');
                                      var rsp = await signoutalluser();
                                      var data = rsp['data'];
                                      var error = rsp['error'];
                                      if (error == true) {
                                        print(rsp['message']);
                                        //setState(() => _isLoading = false);
                                      }
                                      else {
                                        // var message = data['i'];
                                        print('hello lalit'+rsp['message']);
                                        Common.accessToken = null;
                                        Common.refreshToken = null;

                                        //setState(() => _isLoading = false);
                                        setState(() {
                                          Navigator.pop(context);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Login()),
                                          );
                                        });
                                      }
                                    },
                                    child: Container(
                                      padding: EdgeInsets.only(top: 25),
                                      child: Text('SignOut User All Device`s',style: TextStyle(letterSpacing: 1,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 17,
                                      color: Colors.redAccent),),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                    );

                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Icon(Icons.logout,color: Colors.black54,)
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text('Logout',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                Container(
                  child: Divider(
                    color: Colors.grey[500],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Language()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/home.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text('Language',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/home.png',
                          color: Colors.black54,
                          scale: 26,
                        ),
                      ),
                      Container (
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text('Your Notification',style: TextStyle(
                          fontSize: 16,
                        ),),
                      ),
                    ],

                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          child: Image.asset(
                            'assets/images/home.png',
                            color: Colors.black54,
                            scale: 26,
                          ),
                        ),
                        Container (
                          padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text('Settings',style: TextStyle(
                            fontSize: 16,
                          ),),
                        ),
                      ],

                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20,bottom: 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/home.png',
                          color: Colors.black54,
                          scale: 26,
                        ),
                      ),
                      Container (
                        padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                        child: Text('Customer Services',style: TextStyle(
                          fontSize: 16,
                        ),),
                      ),
                    ],

                  ),
                ),

              ]),
            )
          ],
        ),
      ),
    );


  }
}

