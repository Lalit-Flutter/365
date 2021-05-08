
import 'dart:convert';

import 'package:days365app/src/resources/baseapi.dart';
import 'package:days365app/src/resources/common.dart';
import 'package:days365app/src/ui/forgototp_verify.dart';
import 'package:days365app/src/ui/otp.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();
  final globalKey = GlobalKey<ScaffoldState>();
  var forgotController = new TextEditingController();
  var forgot = "";
  bool _isLoading = false;
  Future forgotnumber(String forgot) async
  {
    String url =  BaseApi.api+"/"+"resetPassword/user/sendOTP";
    final response= await http.post(url,
        headers: {"Accept": "Application/json"},
        body: {
          "username":forgot,
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
                  child: Text('Password assistance',style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                  child: Text('Enter the mobile phone number associated with your Day`s365 account.',
                    textAlign:TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      //fontSize: ,
                      //fontWeight: FontWeight.bold
                  ),),
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
                    controller: forgotController,
                    keyboardType: TextInputType.phone,
                    validator: (text) {
                      if (text.isEmpty) return 'Please enter mobile number';
                      String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                      RegExp regExp = new RegExp(patttern);
                      if (!regExp.hasMatch(text) )
                        return 'Please enter valid mobile number'.toLowerCase();
                      forgot = forgotController.text;
                      return null;
                    },
                    onSaved: (text) => forgot = text,
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
                      hintText: "Enter mobile number",
                      filled: true,
                      prefixText: ' ',
                      fillColor: Colors.white10,
                    ),
                  ),
                ),

                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  //height:40,

                  child: _isLoading ? CircularProgressIndicator(): Container(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      child: new Text('Continue',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                      textColor: Colors.white,
                      color: Color(0xFFFf9933),
                      onPressed: ()async{
                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        setState(() => _isLoading = true);
                        var rsp = await forgotnumber(forgot);
                        var data = rsp['data'];
                        var error = rsp['error'];
                        if (error == true) {
                          print(rsp['message']);
                          globalKey.currentState
                              .showSnackBar(new SnackBar(
                            content: new Text(rsp['message'],style: TextStyle(color: Colors.red),),
                          ));
                          setState(() => _isLoading = false);
                        }
                        else {
                          // var message = data['i'];
                          print('hello lalit'+rsp['message']);
                          Common.user_id = data['id'];
                         var otp  = data['otp'];
                          /* globalKey.currentState
                                .showSnackBar(new SnackBar(
                              content: new Text(rsp['message']),
                            ));*/
                          setState(() => _isLoading = false);
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ForgotOTPVerify(otp)),

                            );
                          });
                        }



                          }
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

