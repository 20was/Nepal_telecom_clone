import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:getflutter/getflutter.dart';
import 'bottomBar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

//1858a8
class _MyHomePageState extends State<MyHomePage> {
  final primaryColor = const Color(0xff1858a8);
  final secondaryColor = const Color(0xffffc107);

  Widget _progressData() {
    return Container(
      width: MediaQuery.of(context).size.width / 1.05,
      child: GFProgressBar(
          percentage: 0.7,
          lineHeight: 20,
          progressHeadType: GFProgressHeadType.square,
          backgroundColor: secondaryColor,
          trailing: Text('288.9MB'),
          progressBarColor: primaryColor),
    );
  }

  Widget _progressVoice() {
    return Container(
      width: MediaQuery.of(context).size.width / 1.05,
      child: GFProgressBar(
          percentage: 0.3,
          lineHeight: 20,
          progressHeadType: GFProgressHeadType.square,
          backgroundColor: secondaryColor,
          trailing: Text('482.5 Min'),
          progressBarColor: primaryColor),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: primaryColor,
        leading: Image(
          image: AssetImage('images/logo.png'),
        ),
        title: Text(
          "Namaste! Bishwas",
          style: GoogleFonts.quicksand(
              textStyle: TextStyle(
            fontSize: 18.0,
          )),
        ),
        actions: <Widget>[
          Icon(Icons.refresh),
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.notifications_none),
          SizedBox(
            width: 20.0,
          ),
          Icon(Icons.more_vert),
          SizedBox(
            width: 10.0,
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          color: primaryColor,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(0),
                    leading: Icon(
                      Icons.account_balance_wallet,
                      size: 60,
                      color: Color(0xff1858a8),
                    ),
                    title: Text(
                      'Current Balance',
                      style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                        //fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: primaryColor,
                      )),
                    ),
                    subtitle: Text(
                      'Valid Until: 2022-03-23',
                      style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                        fontSize: 13.0,
                        color: primaryColor,
                      )),
                    ),
                    trailing: Text(
                      'NRs. 106.15',
                      style: GoogleFonts.overpass(
                          textStyle: TextStyle(
                        fontSize: 17.0,
                        color: primaryColor,
                      )),
                    ),
                    //isThreeLine: true,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'Subscribed Packages',
                  style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  )),
                )),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Voice Package 490 Min',
                        style: GoogleFonts.overpass(textStyle: TextStyle()),
                      ),
                      SizedBox(height: 10),
                      _progressVoice(),
                      SizedBox(height: 20),
                      Text(
                        'Data Package 900MB: All Network',
                        style: GoogleFonts.overpass(textStyle: TextStyle()),
                      ),
                      SizedBox(height: 10),
                      _progressData(),
                      SizedBox(height: 20),
                      Text(
                        'Data Package 2100MB: 4G Only',
                        style: GoogleFonts.overpass(textStyle: TextStyle()),
                      ),
                      SizedBox(height: 10),
                      _progressData(),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                    child: Text(
                  'Other Services',
                  style: GoogleFonts.overpass(
                      textStyle: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  )),
                )),
                SizedBox(
                  height: 10,
                ),
                Card(
                  child: Container(
                    //padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () => {},
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.group),
                              SizedBox(height: 10),
                              Text("F & F")
                            ],
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () => {},
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.phonelink_setup),
                              SizedBox(height: 10),
                              Text("Utilities")
                            ],
                          ),
                        ),
                        FlatButton(
                          onPressed: () => {},
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.favorite),
                              SizedBox(height: 10),
                              Text("Services")
                            ],
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () => {},
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.card_giftcard),
                              SizedBox(height: 10),
                              Text("Gift Packs")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 4.0,
                ),
                Card(
                  child: Container(
                    //width: MediaQuery.of(context).size.width / 1.1,
                    //padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () => {},
                          //padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.history),
                              SizedBox(height: 10),
                              Text("Usage History")
                            ],
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () => {},
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.touch_app),
                              SizedBox(height: 10),
                              Text("VAS")
                            ],
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () => {},
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.payment),
                              SizedBox(height: 10),
                              Text("Bill Payment")
                            ],
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () => {},
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.local_offer),
                              SizedBox(height: 10),
                              Text("Tarrif")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 4.0,
                ),
                Card(
                  child: Container(
                    //width: MediaQuery.of(context).size.width / 1.1,
                    //padding: EdgeInsets.all(10),
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () => {},
                          //padding: EdgeInsets.all(10),
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.dashboard),
                              SizedBox(height: 10),
                              Text("Our App")
                            ],
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () => {},
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.feedback),
                              SizedBox(height: 10),
                              Text("Complain")
                            ],
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () => {},
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.contacts),
                              SizedBox(height: 10),
                              Text("Contact")
                            ],
                          ),
                        ),
                        FlatButton(
                          padding: EdgeInsets.all(10),
                          onPressed: () => {},
                          child: Column(
                            children: <Widget>[
                              Icon(Icons.info_outline),
                              SizedBox(height: 10),
                              Text("Company Info")
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  height: 4.0,
                ),
                Container(
                  //width: MediaQuery.of(context).size.width / 1.1,
                  //padding: EdgeInsets.all(10),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FlatButton(
                        padding: EdgeInsets.all(10),
                        onPressed: () => {},
                        //padding: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.event),
                            SizedBox(height: 10),
                            Text("Events")
                          ],
                        ),
                      ),
                      FlatButton(
                        padding: EdgeInsets.all(10),
                        onPressed: () => {},
                        child: Column(
                          children: <Widget>[
                            Icon(Icons.public),
                            SizedBox(height: 10),
                            Text("Social Media")
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 5,
//          shape: BeveledRectangleBorder(
//            borderRadius: new BorderRadius.circular(10.0),
//          ),
          onPressed: () {},
          backgroundColor: Color(0xff4fc3f7),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image(
                image: AssetImage('images/rec.png'),
                width: 30,
              ),
              Text(
                'Topup',
                style: TextStyle(
                  fontSize: 11.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
