
import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  static pincode(BuildContext context) {
    showModalBottomSheet(

      isScrollControlled: true,
      context: context,
      builder: (context) => Wrap(children: [Pincode()]),
    );
  }
  static currentlocation(BuildContext context) {
    showModalBottomSheet(

      isScrollControlled: true,
      context: context,
      builder: (context) => Wrap(children: [CurrentLocation()]),
    );
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Text('Choose your location',style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Text('Select a delivery location to see product availability and delivery options',style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),),
                ),
                Container(
                  padding:EdgeInsets.fromLTRB(20, 20, 20, 10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        child: Card(
                          child: Container(
                            color: Colors.orangeAccent[100],
                            padding:EdgeInsets.all(18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  child: Text('Lalit Sharma',style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold
                                  ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Text('Delhi capital 000000',style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 13,
                                  ),),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 30),
                                  child: Text('Default address',style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 13,
                                  ),),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 150,
                        height: 120,
                        child: Card(
                          child: Container(
                            padding:EdgeInsets.all(18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  child: Text('Add an address or pick-up point',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(

                                      color: Colors.blue,
                                      fontSize: 14,
                                    ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                    pincode(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.location_on_outlined,color: Colors.grey[800],size: 18,),
                        ),
                        Container(
                          child: Text('Enter a pincode',style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13
                          ),),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                    currentlocation(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Icon(Icons.my_location,color: Colors.grey[800],size: 18,),
                        ),
                        Container(
                          child: Text('Use my current location',style: TextStyle(
                              color: Colors.blue,
                              fontSize: 13
                          ),),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CurrentLocation extends StatefulWidget {
  @override
  _CurrentLocationState createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {
  bool checkedValue = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.2,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment:Alignment.topRight,
                    child: Icon(Icons.close,color: Colors.grey[400],),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Text('Allow location access to improve shopping experience',style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                  child: Text('We use your location to improve your shopping experience, ensuring you only see items or products and delivery options available in your area.',style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 14,
                  ),),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: CheckboxListTile(
                    title: Text("Allow the Amazon app to access your location and skip this step in the future.",style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 14,
                    ),),
                    value: checkedValue,
                    onChanged: (value) => setState(() {
                      checkedValue = !checkedValue;
                    }),
                    controlAffinity: ListTileControlAffinity.leading, //  <-- leading Checkbox
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  alignment: Alignment.topLeft,
                  child: RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(text: 'You can manage this access at any time in',
                            style: TextStyle(color: Colors.black,fontSize: 12)),
                        TextSpan(text: ' permissions settings.', style: TextStyle(color: Colors.blue,fontSize: 12)),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1.0),
                                side: BorderSide(color: Color(0xFFFf9933),)),
                            onPressed: () {
                              /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );*/
                            },
                            color: Color(0xFFFf9933),
                            textColor: Colors.white,
                            
                            child: Text("Not Now",
                                style: TextStyle(fontSize: 16)),
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width/2,
                        padding: EdgeInsets.all(20),
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          width: double.infinity,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(1.0),
                                side: BorderSide(color: Color(0xFFFf9933),)),
                            onPressed: () {
                              /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );*/
                            },
                            color: Color(0xFFFf9933),
                            textColor: Colors.white,
                            child: Text("Allow",
                                style: TextStyle(fontSize: 16)),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Pincode extends StatefulWidget {
  @override
  _PincodeState createState() => _PincodeState();
}

class _PincodeState extends State<Pincode> {
  final _formKey = GlobalKey<FormState>();
  var pincodeController = new TextEditingController();
  var pincode = "";
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(15, 10, 20, 5),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.keyboard_arrow_left),
                        Text('Enter a pincode',style: TextStyle(
                            color: Colors.black,
                            fontSize: 16
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                    alignment: Alignment.center,
                    child:  TextFormField(
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.black,),
                      keyboardType: TextInputType.number,
                      controller: pincodeController,
                      validator: (text) {
                        if (text.trim().length < 10)
                          return "Enter your pincode";
                        pincode = pincodeController.text;
                        return null;
                      },
                      onSaved: (text) => pincode = text,
                      decoration: new InputDecoration(
                          contentPadding: const EdgeInsets.only(
                              left: 15,
                              top: 0,
                              right: 15,
                              bottom: 0
                          ),
                          // prefixIcon: Icon(Icons.phone_android_sharp,color: Colors.redAccent,),
                          focusedBorder: OutlineInputBorder(

                            borderSide: BorderSide(color: Colors.grey, width: 0.5),
                          ),
                          enabledBorder: OutlineInputBorder(

                            borderSide: BorderSide(color: Colors.black, width: 0.5),
                          ),
                          hintStyle: new TextStyle(color: Colors.grey[500]),
                          hintText: "Enter a pincode",
                          labelStyle: new TextStyle(color: Colors.white),
                          fillColor: Colors.white70),
                    ),
                  ),
                  Container(
                    //width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.0),
                            side: BorderSide(color: Color(0xFFFf9933))),
                        onPressed: () {
                          /* Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );*/
                        },
                        color: Color(0xFFFf9933),
                        textColor: Colors.white,
                        child: Text("Apply",
                            style: TextStyle(fontSize: 16)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}