import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ChanalineHistoryScreen extends StatefulWidget {
  @override
  _ChanalineHistoryScreenState createState() => _ChanalineHistoryScreenState();
}

class _ChanalineHistoryScreenState extends State<ChanalineHistoryScreen>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
        appBar: new AppBar(
          title: Text('Chanaline History',
            style: TextStyle(
              color: Colors.white,
              fontFamily: "OpenSans-Bold",
            ),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFFAC0808),
          actions: <Widget>[
            new IconButton(
              icon: new Icon(Icons.close, color: Colors.white,),
              onPressed: () => Navigator.of(context).pop(null),
            ),
          ],
          leading: new Container(),
        ),
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 30.0, right: 10.0),
                    child: Text(
                      "Chanaline History",
                      style: TextStyle(
                        fontFamily: "OpenSans-Bold",
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}