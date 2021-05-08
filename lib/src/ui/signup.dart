import 'dart:convert';
import 'package:days365app/src/resources/baseapi.dart';
import 'package:days365app/src/models/signup_model.dart';
import 'package:days365app/src/resources/common.dart';
import 'package:days365app/src/ui/login.dart';
import 'package:days365app/src/ui/otp.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final globalKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  TextEditingController passController = new TextEditingController();
  TextEditingController cpassController = new TextEditingController();
  String name = "";
  String phone = "";
  String pass = "";
  String cpass = "";
  bool _obscureText = true;
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  bool _isLoading = false;
  var otp;
  var getres;
  Future register(
      String name, String phone, String pass,
      ) async {

    var data = {
      "fullname":name,
      "mobile":{
        "countryCode": "+91",
        "number":phone
      },
      "password":pass,
      "userType":"user"
    };

    var apiData = {
      "url":
      BaseApi.api +"/"+"signup/user/presignup",
      "data": data
    };

    ApiClass.postApiCall(apiData, (onSuccess) async {
      print(onSuccess.toString());
      getres = jsonDecode(onSuccess["response"]);
      var res = getres['data'];
      var message = getres['message'];
     // var id = res['id'];

      otp  = res['otp'];
      if(getres['error'] == true){
        globalKey.currentState
            .showSnackBar(new SnackBar(
          content: new Text(getres['message']),
        ));
      }else{
        Common.user_id = res['id'];
        setState(() {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => OTP(otp)),
          );
        });

      }
      //print(id);
      print('message'+message);
      /*  globalKey.currentState
          .showSnackBar(new SnackBar(
        content: new Text(getres['message']),
      ));*/

      setState(() => _isLoading = false);
     /* Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OTP(otp)),

      );*/
    }, (onError) {
      setState(() => _isLoading = false);
      globalKey.currentState
          .showSnackBar(new SnackBar(
        content: new Text('Error working with the api'),
      ));
      print("Error working with the api");
    }

    );
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
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    validator: (text) {
                      if (text.trim().length < 3)
                        return "Please Enter Your Name";
                      name = nameController.text;
                      return null;
                    },
                    onSaved: (text) => name = text,
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
                      hintText: "Enter Your Name",
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
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    validator: (text) {
                      if (text.isEmpty) return 'Please enter mobile number';
                      String patttern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
                      RegExp regExp = new RegExp(patttern);
                      if (!regExp.hasMatch(text) )
                        return 'Please enter valid mobile number'.toLowerCase();
                      phone = phoneController.text;
                      return null;
                    },
                    /*validator: (text) {
                      if (text.trim().length < 9)
                        return "phone too short.";
                      phone = phoneController.text;
                      return null;
                    },*/
                    onSaved: (text) => phone = text,
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
                      hintText: "Mobile Number",
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
                    controller: passController,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (text) {
                      if (text.isEmpty) return 'Please enter password';
                      if (text.length <5)
                        return 'Password too short'.toLowerCase();
                      pass = passController.text;
                      return null;
                    },
                  /*  validator: (text) {
                      if (text.trim().length < 3)
                        return "Password too short.";
                      pass = passController.text;
                      return null;
                    },*/
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
                      hintText: "Create Password",
                      filled: true,
                      prefixText: ' ',
                      fillColor: Colors.white10,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(25, 5, 20, 0),
                  child: Text('Password must be at least 6 characters.',style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      fontSize: 12
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
                    controller: cpassController,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (text) {
                      if (text.isEmpty) return 'Re-enter password';
                      if (text.length <6)
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
                      hintText: "Confirm Password",
                      filled: true,
                      prefixText: ' ',
                      fillColor: Colors.white10,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.fromLTRB(5, 0, 20, 10),
                  child: FlatButton(
                      onPressed: _toggle,
                      child: new Text(_obscureText ? "Show Password" : "Hide Password",style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 11
                      ),)),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                  //height:40,

                  child: _isLoading ?
                  CircularProgressIndicator():
                  Container(
                    width: MediaQuery.of(context).size.width,
                    child: RaisedButton(
                      child: new Text('Verify Mobile number',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),),
                      textColor: Colors.white,
                      color: Color(0xFFFf9933),
                      onPressed: () async{

                      if (_formKey.currentState.validate()) {
                        _formKey.currentState.save();
                        register(name,phone,pass);
                        setState(() => _isLoading = true);

                       /* var rsp = await registerUser(
                            name, phone, pass);
                        var data = rsp['data'];
                        var error = rsp['error'];
                        if (error == "true") {
                          globalKey.currentState
                              .showSnackBar(new SnackBar(
                            content: new Text(rsp['message']),
                          ));
                          setState(() => _isLoading = false);
                        } else {
                          var user_id = data['userid'];

                          var token = data['token'];
                          print('auth token>>>>>>>>' + token);
                         // AuthToken.authtoken = token;
                         // print('auth>>>>>>>>' + AuthToken.authtoken);
                          SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                          setState(() => _isLoading = false);
                          setState(() {
                            prefs.setString('userid', user_id);
                            prefs.setString('token', token);
                            //Navigator.pop(context);


                          });
                        }*/
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
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 10),
                    child: Row(
                        children: <Widget>[
                          Expanded(
                              child: Divider(thickness: 1,color: Colors.grey[500],)
                          ),

                          Container(
                              padding:EdgeInsets.only(right: 5,left: 5),
                              child: Text("Or")),
                          GestureDetector(
                            onTap: (){
                               Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login()),

                        );
                            },
                            child: Container(
                                padding:EdgeInsets.only(right: 5,left: 0),
                                child: Text("Login",style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontSize: 15
                                ),)),
                          ),

                          Expanded(
                              child: Divider(thickness: 1,color: Colors.grey[500],)
                          ),
                        ]
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


