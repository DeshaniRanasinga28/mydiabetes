import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../validator.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/custom_flat_button.dart';

class UserSettingScreen extends StatefulWidget {
  @override
  _UserSettingScreenState createState() => _UserSettingScreenState();
}

class _UserSettingScreenState extends State<UserSettingScreen>{
  final TextEditingController firstname = new TextEditingController();
  final TextEditingController lastname = new TextEditingController();
  final TextEditingController email = new TextEditingController();
  final TextEditingController phonenumber = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  final TextEditingController newrpassword = new TextEditingController();
  final TextEditingController reenterpassword = new TextEditingController();

  CustomTextField firstnameField;
  CustomTextField lastnameField;
  CustomTextField emailField;
  CustomTextField phonenumberField;
  CustomTextField passwordField;
  CustomTextField newpasswordField;
  CustomTextField reenterpasswordField;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    firstnameField = new CustomTextField(
      baseColor: Color(0xFF5FB794),
      hintColor: Colors.grey,
      borderColor: Colors.black,
      errorColor: Colors.red,
      controller: firstname,
      obscureText: false,
      hint: "First Name",
      inputType: TextInputType.text,
      validator: Validator.validateName,
    );

    lastnameField = new CustomTextField(
      baseColor: Color(0xFF5FB794),
      hintColor: Colors.grey,
      borderColor: Colors.black,
      errorColor: Colors.red,
      controller: lastname,
      obscureText: false,
      hint: "Last Name",
      inputType: TextInputType.text,
      validator: Validator.validateName,
    );

    emailField = new CustomTextField(
      baseColor: Color(0xFF5FB794),
      hintColor: Colors.grey,
      borderColor: Colors.black,
      errorColor: Colors.red,
      controller: email,
      obscureText: false,
      hint: "E-mail",
      inputType: TextInputType.emailAddress,
      validator: Validator.validateEmail,
    );

    phonenumberField = new CustomTextField(
      baseColor: Color(0xFF5FB794),
      hintColor: Colors.grey,
      borderColor: Colors.black,
      errorColor: Colors.red,
      controller: phonenumber,
      obscureText: false,
      hint: "Phone Number",
      inputType: TextInputType.number,
      validator: Validator.validateNumber,
    );

    passwordField = new CustomTextField(
      baseColor: Color(0xFF5FB794),
      hintColor: Colors.grey,
      borderColor: Colors.black,
      errorColor: Colors.red,
      controller: password,
      obscureText: true,
      hint: "Password",
      inputType: TextInputType.text,
      validator: Validator.validatePassword,
    );

    newpasswordField = new CustomTextField(
      baseColor: Color(0xFF5FB794),
      hintColor: Colors.grey,
      borderColor: Colors.black,
      errorColor: Colors.red,
      controller: newrpassword,
      obscureText: true,
      hint: "new Password",
      inputType: TextInputType.text,
      validator: Validator.validatePassword,
    );


    reenterpasswordField = new CustomTextField(
      baseColor: Color(0xFF5FB794),
      hintColor: Colors.grey,
      borderColor: Colors.black,
      errorColor: Colors.red,
      controller: reenterpassword,
      obscureText: true,
      hint: "Re-Enter Password",
      inputType: TextInputType.text,
      validator: Validator.validatePassword,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
      child: Scaffold(
        appBar: new AppBar(
          title: Text('Edit Details',
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
                        top: 50.0, bottom: 10.0),
                    child: Image.asset("images/user_icon_red.png", width: 100.0, height: 100.0,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 30.0, right: 30.0),
                    child: firstnameField,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 30.0, right: 30.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 30.0, right: 30.0),
                    child: emailField,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 30.0, right: 30.0),
                    child: phonenumberField,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 30.0, right: 30.0),
                    child: passwordField,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 30.0, right: 30.0),
                    child: newpasswordField,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0, left: 30.0, right: 30.0),
                    child: reenterpasswordField,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 30.0, right: 30.0, bottom: 40.0),
                    child: CustomFlatButton(
                      title: "Submit",
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      textColor: Colors.white,
                      onPressed: () {},
                      splashColor: Colors.black12,
                      borderColor: Colors.black,
                      borderWidth: 0,
                      color: Color(0xFF5FB794),
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