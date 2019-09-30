import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'doctor_screen.dart' as doctorscreen;
import 'consulter_screen.dart' as consulterscreen;

class DoctorScreen extends StatefulWidget {
  @override
  _DoctorScreenState createState() => _DoctorScreenState();
}

class _DoctorScreenState extends State<DoctorScreen> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    controller = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFAC0808),
          bottom: new TabBar(
            tabs: <Widget>[
              new Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text("Doctor",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "OpenSans-Bold",
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              new Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text("Consulter",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "OpenSans-Bold",
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
            controller: controller,
            indicatorColor: Colors.pink,
            indicatorSize: TabBarIndicatorSize.tab,),
          bottomOpacity: 1,
        ),
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            new doctorscreen.DoctorScreen(),
            new consulterscreen.ConsulterScreen(),
          ],
        ),
      ),


    );
  }

}