import 'dart:convert';
import 'package:days365app/src/resources/baseapi.dart';
import 'package:days365app/src/resources/common.dart';
import 'package:days365app/src/ui/forgotpass.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';

class Password extends StatefulWidget {
   String phonee;
  Password(this.phonee, {Key key})
      : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final _formKey = GlobalKey<FormState>();
  final globalKey = GlobalKey<ScaffoldState>();
  var passController = new TextEditingController();
  var pass = "";
  bool _isLoading = false;
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  Future signin(String pass) async
  {
    String url =  BaseApi.api+"/"+"signin/user";
    final response= await http.post(url,
        headers: {"Accept": "Application/json"},
        body: {
          "type":"MOBILE",
          "value": widget.phonee,
          "password":pass
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
                    controller: passController,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (text) {
                      if (text.isEmpty) return 'Please enter password';
                      if (text.length <5)
                        return 'Password too short'.toLowerCase();
                      pass = passController.text;
                      return null;
                    },
                    onSaved: (text) => pass = text,
                    obscureText: _obscureText,
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
                      hintText: "Enter Your Password",
                      filled: true,
                      prefixText: ' ',
                      fillColor: Colors.white10,
                    ),
                  ),
                ),
                 Container(
                   padding: EdgeInsets.fromLTRB(5, 0, 20, 10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Container(
                         child: FlatButton(
                             onPressed: _toggle,
                             child: new Text(_obscureText ? "Show Password" : "Hide Password",style: TextStyle(
                                 fontWeight: FontWeight.w500,
                                 fontSize: 11
                             ),)),
                       ),
                       GestureDetector(
                         onTap: (){
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) => ForgotPassword()),

                           );
                         },
                         child: Container(
                           child: Text('Forgot Password?',style: TextStyle(
                               fontWeight: FontWeight.w500,
                               fontSize: 11
                           ),),
                         ),
                       ),

                     ],
                   ),
                 ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  //height:40,

                  child: _isLoading ? CircularProgressIndicator():
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      child: new Text('LOG IN',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                      textColor: Colors.white,
                      color: Color(0xFFFf9933),
                      onPressed: ()async {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          //register(name,phone,pass);
                          setState(() => _isLoading = true);
                          var rsp = await signin(pass);
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
                            print('refreshToken lalit'+data['refreshToken']);
                            print('accessToken lalit'+data['accessToken']);
                            Common.accessToken = data['accessToken'];
                            Common.refreshToken = data['refreshToken'];
                            gotoHomeScreen(context);
                            setState(() => _isLoading = false);

                          }
                        }
                      },
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                  child: Row(
                      children: <Widget>[
                        Expanded(
                            child: Divider(thickness: 1,color: Colors.grey[500],)
                        ),

                        Container(
                            padding:EdgeInsets.only(right: 5,left: 5),
                            child: Text("Or")),

                        Expanded(
                            child: Divider(thickness: 1,color: Colors.grey[500],)
                        ),
                      ]
                  )
                ),
               /* Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  //height:40,
                  width: MediaQuery.of(context).size.width,
                  child: RaisedButton(
                    child: new Text('Get an OTP on your Phone',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    textColor: Colors.white,
                    color: Color(0xFF06588F),
                    onPressed: () => {
                      setState(() {
                       *//* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OTP()),

                        );*//*
                      })
                    },

                  ),
                ),*/
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
