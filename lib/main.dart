import 'package:flutter/material.dart';
import 'app/ui/screens/splash_screen.dart';
import 'app/ui/screens/signup_screen.dart';
import 'app/ui/screens/home_screen.dart';
import 'package:flutter/services.dart';
import 'app/ui/screens/forgetpassword_screen.dart';
import 'app/ui/screens/chanline_history_screen.dart';
import 'app/ui/screens/user_setting.dart';
import 'app/ui/screens/about_us_screen.dart';
import 'app/ui/screens/help_screen.dart';
import 'app/ui/screens/web_screen.dart';
import 'app/ui/screens/chanaling_screen.dart';
import 'app/ui/screens/hospitaldetails_screen.dart';
import 'app/ui/screens/signin_screen.dart';

void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFFB13142), // status bar color
  ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "My Diabetes",
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup' : (BuildContext context) => new SignUpScreen(),
        '/forgetpassword' : (BuildContext context) => new ForgetPasswordScreen(),
        '/home' : (BuildContext context) => new HomeScreen(),
        '/yourchanaline' : (BuildContext context) => new ChanalineHistoryScreen(),
        '/usersetting' : (BuildContext context )=> new UserSettingScreen(),
        '/aboutus' : (BuildContext context) => new AboutUsScreen(),
        '/help' : (BuildContext context) => new HelpScreen(),
        '/webview' : (BuildContext context) => new WebScreen(),
        '/hospital': (BuildContext context) => new HospitalDetailsScreen(),
        '/chanaling': (BuildContext context) => new DoctorScreen(),
        '/signin' : (BuildContext context) => new SignInScreen(),
      },
      theme: ThemeData(
        primaryColor: Colors.white,
        primarySwatch: Colors.pink
      ),
      home: SplashScreen(),

    );
  }



}