import 'package:days365app/src/ui/password.dart';
import 'package:days365app/src/ui/signup.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  var phoneController = new TextEditingController();
  var phone = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Form(
              key: _formKey,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  //decoration: BoxDecoration(color: Color(0xff014441)),
                  child: Stack(
                    children: <Widget>[
                      Container(
                          child: Image.asset(
                        'assets/images/welcomeimg.png',
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                      )),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2,
                          width: MediaQuery.of(context).size.width,
                          child: SingleChildScrollView(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(30),
                                  topLeft: Radius.circular(30),
                                ),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 0.0),
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.only(top: 20, bottom: 10),
                                      child: Image.asset(
                                        'assets/images/logo.png',
                                        scale: 10,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                      child: TextFormField(
                                        autocorrect: true,
                                        autofocus: false,
                                        cursorHeight: 18,
                                        style: TextStyle(
                                            decoration: TextDecoration.none,
                                            height: 0.5,
                                            color: Colors.black),
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
                                        onSaved: (text) => phone = text,
                                        decoration: new InputDecoration(
                                          /* border: new OutlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.red)
                              ),*/

                                          enabledBorder: new OutlineInputBorder(
                                            borderSide: new BorderSide(
                                                color: Colors.grey[400]),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: Colors.blueAccent),
                                          ),
                                          hintStyle: new TextStyle(
                                              color: Colors.grey[500]),
                                          hintText: "Mobile Number",
                                          filled: true,
                                          prefixText: ' ',
                                          fillColor: Colors.white10,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          Container(
                                            height: 40,
                                            width: 140,
                                            child: RaisedButton(
                                              child: new Text(
                                                'SIGN UP',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              textColor: Colors.white,

                                              // 2
                                              color: Color(0xFF06588F),
                                              // 3
                                              onPressed: () => {
                                                setState(() {
                                                  Navigator.pop(context);
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            SignUp()),
                                                  );
                                                })
                                              },
                                            ),
                                          ),
                                          Container(
                                            height: 40,
                                            width: 140,
                                            child: RaisedButton(
                                              child: new Text(
                                                'LOG IN',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 18),
                                              ),
                                              textColor: Colors.white,

                                              // 2

                                              color: Color(0xFFFf9933),

                                              // 3
                                              onPressed: (){
                                              if (_formKey.currentState.validate()) {
                                                _formKey.currentState.save();
                                                setState(() {
                                                // Navigator.pop(context);
                                                  Navigator.pushReplacement(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            Password(phoneController.text)),
                                                  );
                                                });
                                                }

                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                      child: Text(
                                        'Or',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 16),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                                      child: Text(
                                        'Log in with your mail',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                            color: Color(0xFF06588F)),
                                      ),
                                    ),
                                    Container(
                                      child: Divider(
                                        color: Colors.grey[400],
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Home()),
                                        );
                                      },
                                      child: Container(
                                        padding: EdgeInsets.fromLTRB(20, 0, 20, 30),
                                        child: Text(
                                          'SKIP FOR NOW',
                                          style: TextStyle(
                                              fontSize: 15, color: Colors.grey[600]),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
