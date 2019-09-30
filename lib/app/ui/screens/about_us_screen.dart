import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../Strings.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
        appBar: new AppBar(
          title: Text('About Us',
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
                        top: 20.0, left: 20.0, right: 20.0),
                    child: Text( Strings.description,
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 12.0,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 50.0, left: 20.0, right: 20.0),
                    child: Text(
                      "Application Information",
                      style: TextStyle(
                        fontFamily: "OpenSans-Bold",
                        fontSize: 12.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 40.0, right: 20.0),
                    child: Text(
                      "Application Name : " + Strings.app_name,
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 40.0, right: 20.0),
                    child: Text(
                      "Version : " + Strings.version,
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 40.0, right: 20.0),
                    child: Text(
                      "Developer Name : " + Strings.dev_name,
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 40.0, right: 20.0),
                    child: Text(
                      "Student ID: " + Strings.std_id,
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 40.0, right: 20.0),
                    child: Text(
                      "Module: " + Strings.module_name,
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 40.0, right: 20.0),
                    child: Text(
                      "Code Number: " + Strings.module_no,
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 40.0, right: 20.0),
                    child: Text(
                      "Term: " + Strings.term,
                      style: TextStyle(
                        fontFamily: "OpenSans",
                        fontSize: 12.0,
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(
                        top: 40.0, left: 10.0, right: 10.0),
                    child: Text(
                      Strings.faculty,
                      style: TextStyle(
                        fontFamily: "OpenSans-Bold",
                        fontSize: 12.0,
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
