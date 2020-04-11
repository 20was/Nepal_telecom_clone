import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 8.0,
      //color: Colors.red,
      elevation: 4.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        color: Color(0xff4fc3f7),
        height: 70.0,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {},
                    //color: Colors.orange,
                    //padding: EdgeInsets.all(10.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/mp.png'),
                          width: 30,
                        ),
                        Text("Buy Pack")
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {},
                    //color: Colors.orange,
                    //padding: EdgeInsets.all(10.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/transfer.png'),
                          width: 30,
                        ),
                        Text("Transfer")
                      ],
                    ),
                  ),
                ],
              )),
          Container(
              height: 50.0,
              width: MediaQuery.of(context).size.width / 2 - 20.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FlatButton(
                    onPressed: () => {},
                    //color: Colors.orange,
                    //padding: EdgeInsets.all(10.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/paybill.png'),
                          width: 30,
                        ),
                        Text("Pay Bill")
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () => {},
                    //color: Colors.orange,
                    //padding: EdgeInsets.all(10.0),
                    child: Column(
                      // Replace with a Row for horizontal icon + text
                      children: <Widget>[
                        Image(
                          image: AssetImage('images/offer.png'),
                          width: 30,
                        ),
                        Text("Offers")
                      ],
                    ),
                  ),
                ],
              )),
        ]),
      ),
    );
  }
}
