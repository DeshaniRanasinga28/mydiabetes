import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../Strings.dart';
import 'dart:io';
import 'package:url_launcher/url_launcher.dart';
import 'web_screen.dart';

class HelpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
        appBar: new AppBar(
          title: Text(' Help',
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
                  Container(
                    padding: const EdgeInsets.only(left: 5.0),
                    alignment: Alignment.topLeft,
                    child: FlatButton.icon(
                        icon: new Image.asset('images/eamil.png', width: 20.0, height: 20.0,),
                        label: Text(Strings.email,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "OpenSans",
                              fontSize: 16.0
                          ),
                        )
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5.0),
                    alignment: Alignment.topLeft,
                    child: FlatButton.icon(
                        onPressed: (){
                          _launchCaller();
                        },
                        icon: new Image.asset('images/telephone.png', width: 20.0, height: 20.0,),
                        label: Text(Strings.phone,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "OpenSans",
                              fontSize: 16.0
                          ),
                        )
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5.0),
                    alignment: Alignment.topLeft,
                    child: FlatButton.icon(
                      onPressed: (){
                        _launchCaller();
                      },
                        icon: new Image.asset('images/mobile.png', width: 20.0, height: 20.0,),
                        label: Text(Strings.mobile,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "OpenSans",
                              fontSize: 16.0
                          ),
                        )
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 5.0),
                    alignment: Alignment.topLeft,
                    child: FlatButton.icon(
                        icon: new Image.asset('images/fax.png', width: 20.0, height: 20.0,),
                        label: Text(Strings.phone,
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "OpenSans",
                              fontSize: 16.0
                          ),
                        )
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
  _launchCaller() async {
    const url = "tel:1234567";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

}
