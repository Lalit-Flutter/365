import 'dart:convert';

import 'package:days365app/src/resources/baseapi.dart';
import 'package:days365app/src/resources/common.dart';
import 'package:days365app/src/ui/newPassword.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ForgotOTPVerify extends StatefulWidget {
  final String forgototp;
  ForgotOTPVerify( this.forgototp, {Key key})
      : super(key: key);
  @override
  _ForgotOTPVerifyState createState() => _ForgotOTPVerifyState();
}

class _ForgotOTPVerifyState extends State<ForgotOTPVerify> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController otpController = new TextEditingController();
  final globalKey = GlobalKey<ScaffoldState>();
  var forgototp = "";
  bool _isLoading = false;
  @override
  void initState() {
    otpController.text = widget.forgototp;
    super.initState();
  }
  Future forgotOTP() async
  {
    String url =  BaseApi.api+"/"+"resetPassword/user/verifyOTP";
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
                      forgototp = otpController.text;
                      return null;
                    },
                    onSaved: (text) => forgototp = text,
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
                          var rsp = await forgotOTP();
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
                            setState(() => _isLoading = false);
                             setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => NewPassword()),

                              );
                            });
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

