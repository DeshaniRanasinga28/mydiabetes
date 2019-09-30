import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'article_screen.dart';
import 'chanaling_screen.dart';
import 'food_screen.dart';
import 'setting_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[ArticleScreen(), DoctorScreen(), FoodScreen(), SettingScreen()],
          controller: controller,
        ),

        bottomNavigationBar: Material(
          color: Color(0xFF5FB794),

          child: TabBar(
            tabs: <Widget>[
              Tab(
                icon: new Image.asset('images/article_icon.png', width: 30.0, height: 30.0,),
                child: Text(
                  "Article",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "OpenSans",
                  ),

                ),
              ),
              Tab(
                icon: new Image.asset('images/doctor_icon.png', width: 30.0, height: 30.0,),
                child: Text(
                  "Doctor",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "OpenSans",
                  ),
                ),
              ),
              Tab(
                icon: new Image.asset('images/food_icon.png', width: 30.0, height: 30.0,),
                child: Text(
                  "Food",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "OpenSans",
                  ),
                ),

              ),
              Tab(
                icon: new Image.asset('images/settings.png', width: 30.0, height: 30.0,),
                child: Text(
                  "Setting",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: "OpenSans",
                  ),
                ),
              )
            ],
            controller: controller,
          ),
        ),
      ),
    );
  }

}