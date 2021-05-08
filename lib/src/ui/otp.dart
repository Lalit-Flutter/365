
import 'dart:convert';

import 'package:days365app/src/resources/baseapi.dart';
import 'package:days365app/src/resources/common.dart';
import 'package:http/http.dart' as http;
import 'package:days365app/src/ui/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OTP extends StatefulWidget {
  final String otpp;
  OTP( this.otpp, {Key key})
      : super(key: key);

  @override
  _OTPState createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  final _formKey = GlobalKey<FormState>();
 // var otpController = new TextEditingController();
  TextEditingController otpController = new TextEditingController();
  final globalKey = GlobalKey<ScaffoldState>();
  var otp = "";
  bool _isLoading = false;
  bool _isLoading1 = false;
  @override
  void initState() {
    otpController.text = widget.otpp;
    super.initState();
  }
  Future registerUser() async
  {
    String url =  BaseApi.api+"/"+"signup/user";
    final response= await http.post(url,
        headers: {"Accept": "Application/json"},
        body: {
          "id":Common.user_id,
          "otp":otpController.text
        }
    );

    var convertedDatatoJson = jsonDecode(response.body);
    return convertedDatatoJson;

  }
  Future resendOtp() async
  {
    String url =  BaseApi.api+"/"+"signup/user/resendOtp";
    final response= await http.post(url,
        headers: {"Accept": "Application/json"},
        body: {
          "id":Common.user_id,
        }
    );

    var convertedDatatoJson = jsonDecode(response.body);
    return convertedDatatoJson;

  }
  void gotoHomeScreen(context) async {
    ///SHare String , int , bool, double
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setBool('seen', true);
    setState(() {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 40,bottom: 10),
                  child: Image.asset(
                    'assets/images/logo.png',
                    scale: 13,
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                  child: TextFormField(
                    autocorrect: true,
                    autofocus: false,
                    cursorHeight: 18,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        height: 0.5,

                        color: Colors.black
                    ),
                    controller: otpController,
                    keyboardType: TextInputType.text,
                    validator: (text) {
                      if (text.trim().length < 5)
                        return "Please Enter Otp.";
                      otp = otpController.text;
                      return null;
                    },
                    onSaved: (text) => otp = text,
                    decoration: new InputDecoration(
                      /* border: new OutlineInputBorder(
                                borderSide: new BorderSide(color: Colors.red)
                            ),*/

                      enabledBorder: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey[400]),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blueAccent),
                      ),
                      hintStyle: new TextStyle(color: Colors.grey[500]),
                      hintText: "Enter OTP",
                      filled: true,
                      prefixText: ' ',
                      fillColor: Colors.white10,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text('We`ve senr an OTP to 9924636418',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 12
                        ),),
                      ),
                      GestureDetector(
                        onTap: () async{
                          setState(() => _isLoading1 = true);

                          var rsp = await resendOtp();
                          var data = rsp['data'];
                          //var message = rsp['message'];
                          var error = rsp['error'];
                          if (error == true) {
                            /*  globalKey.currentState.showBottomSheet((context) => Container(
                              width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.all(10),
                                color: Colors.black,
                                child: Text(rsp['message'],style: TextStyle(color: Colors.red),)));*/
                            globalKey.currentState
                                .showSnackBar(new SnackBar(
                              content: new Text(rsp['message']),
                            ));
                            setState(() => _isLoading1 = false);
                          } else {
                            print('hello lalit'+rsp['message']);
                            var otp = data['otp'];
                            otpController.text = otp;
                             globalKey.currentState
                                .showSnackBar(new SnackBar(
                              content: new Text(rsp['message']),
                            ));
                            // var message = data['i'];

                            //var token = data['token'];
                            // print('auth token>>>>>>>>' + token);
                            // AuthToken.authtoken = token;
                            // print('auth>>>>>>>>' + AuthToken.authtoken);
                            // SharedPreferences prefs =
                            // await SharedPreferences.getInstance();
                            setState(() => _isLoading1 = false);

                          }
                        },
                        child: Container(
                          child: _isLoading1 ?
                          CircularProgressIndicator():
                          Text('Resend OTP',style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.blueAccent,
                              fontSize: 12
                          ),),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  //height:40,
                  child: _isLoading ?
                  CircularProgressIndicator():
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      child: new Text('Continue',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                      textColor: Colors.white,
                      color: Color(0xFFFf9933),
                      onPressed: () async{
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          //register(name,phone,pass);
                          setState(() => _isLoading = true);
                           var rsp = await registerUser();
                           var data = rsp['data'];
                          var error = rsp['error'];
                          if (error == true) {
                            globalKey.currentState
                                .showSnackBar(new SnackBar(
                              content: new Text(rsp['message'],style: TextStyle(color: Colors.red),),
                            ));
                            setState(() => _isLoading = false);
                          }
                          else {


                           // var message = data['i'];
                            print('hello lalit'+rsp['message']);
                             globalKey.currentState
                                .showSnackBar(new SnackBar(
                              content: new Text(rsp['message']),
                            ));
                            //var token = data['token'];
                           // print('auth token>>>>>>>>' + token);
                           // AuthToken.authtoken = token;
                           // print('auth>>>>>>>>' + AuthToken.authtoken);
                           // SharedPreferences prefs =
                           // await SharedPreferences.getInstance();
                            gotoHomeScreen(context);
                            setState(() => _isLoading = false);
                           /* setState(() {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Home()),

                              );
                             // prefs.setString('userid', user_id);
                             // prefs.setString('token', token);
                              //Navigator.pop(context);


                            });*/
                          }
                        }

                        /*setState(() {
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => OTP()),

                            );
                          })*/
                      },

                    ),
                  ),
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(0, 70, 0, 10),
                    child: Divider(thickness: 1.5,color: Colors.grey[400],)
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(30, 15, 30, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text('Conditions Of Use',style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10
                      ),),
                      Text('Privacy Notice',style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10
                      ),),
                      Text('Help',style: TextStyle(
                          color: Colors.blue,
                          fontSize: 10
                      ),)
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

