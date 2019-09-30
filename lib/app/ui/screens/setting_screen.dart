import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen>{
  double deviceWidth, deviceHeight;

  @override
  Widget build(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.width;

    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: Stack(
            children: <Widget>[
              ListView(
                children: <Widget>[
                  Container(width: deviceWidth, height: deviceHeight/2.0 + 20.0, color: Color(0xFFAC0808),
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(
                                 top: 50.0, bottom: 10.0),
                          child: Image.asset("images/user_icon.png", width: 80.0, height: 80.0,),
                        ),
                        Text(
                          "Deshani Ranasingha",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans-Bold",
                            fontSize: 20.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 400.0,
                    child: ListView(
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(left: 5.0),
                          alignment: Alignment.topLeft,
                          child: FlatButton.icon(
                              onPressed: (){
                                Navigator.of(context).pushNamed("/usersetting");
                              },
                              icon: new Image.asset('images/setting_icon.png', width: 20.0, height: 20.0,),
                              label: Text("Setting",
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
                                Navigator.of(context).pushNamed("/help");
                              },
                              icon: new Image.asset('images/help_icon.png', width: 20.0, height: 20.0,),
                              label: Text("Help",
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
                                Navigator.of(context).pushNamed("/aboutus");
                              },
                              icon: new Image.asset('images/aboutus_icon.png', width: 20.0, height: 20.0,),
                              label: Text("About Us",
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
                              Navigator.of(context).pushNamed("/signin");
                            },

                              icon: new Image.asset('images/signout_icon.png', width: 25.0, height: 25.0,),
                              label: Text("Signin Out",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "OpenSans",
                                    fontSize: 16.0
                                ),
                              )
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}