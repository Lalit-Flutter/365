
import 'dart:convert';
import 'package:days365app/src/ui/login.dart';
import 'package:days365app/src/ui/password.dart';
import 'package:http/http.dart' as http;
import 'package:days365app/src/resources/baseapi.dart';
import 'package:days365app/src/resources/common.dart';
import 'package:flutter/material.dart';

class NewPassword extends StatefulWidget {
  @override
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final _formKey = GlobalKey<FormState>();
  final globalKey = GlobalKey<ScaffoldState>();
  var passController = new TextEditingController();
  var cpassController = new TextEditingController();
  var pass = "";
  var cpass = "";
  bool _isLoading = false;
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  Future newPassword(String pass) async
  {
    String url =  BaseApi.api+"/"+"resetPassword/user";
    final response= await http.post(url,
        headers: {"Accept": "Application/json"},
        body: {

          "id":Common.user_id,
          "password":pass
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
                      hintText: "Set new Password",
                      filled: true,
                      prefixText: ' ',
                      fillColor: Colors.white10,
                    ),
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
                    controller: cpassController,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (text) {
                      if (text.isEmpty) return 'Please enter password';
                      if (text.length <5)
                        return 'Password too short'.toLowerCase();
                      cpass = cpassController.text;
                      return null;
                    },
                    onSaved: (text) => cpass = text,
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
                      hintText: "Confirm new Password",
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
                      child: new Text('SET PASSWORD',style: TextStyle(
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
                          var rsp = await newPassword(pass);
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
                            /* globalKey.currentState
                                .showSnackBar(new SnackBar(
                              content: new Text(rsp['message']),
                            ));*/
                            setState(() => _isLoading = false);
                            setState(() {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),

                              );
                            });

                          }
                        }
                      },
                    ),
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
