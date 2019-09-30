import 'package:flutter/material.dart';
import 'dart:async';
import '../../../Strings.dart';
import 'signin_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignInScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        child: new Stack(
          children: <Widget>[
            getBackgroun(),
            Container(
              margin: EdgeInsets.only(bottom: 40.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                Strings.name,
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: 12.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              alignment: Alignment.bottomCenter,
              child: Text( "version " +
                Strings.version,
                style: TextStyle(
                  fontFamily: "OpenSans",
                  fontSize: 12.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container getBackgroun() {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("images/splash.png"), fit: BoxFit.fill)),
    );
  }
}
