import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget{
  final String hint;
  final TextEditingController controller;
  final Color baseColor;
  final Color hintColor;
  final Color borderColor;
  final Color errorColor;
  final TextInputType inputType;
  final bool obscureText;
  final Function validator;
  final Function onChanged;


  CustomTextField(
      {this.hint,
        this.controller,
        this.baseColor,
        this.hintColor,
        this.borderColor,
        this.errorColor,
        this.inputType,
        this.obscureText,
        this.validator,
        this.onChanged}
        );

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();

}

class _CustomTextFieldState extends State<CustomTextField>{
  Color currentColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentColor = widget.borderColor;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: currentColor, width: 1.5),
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: TextField(
          obscureText: widget.obscureText,
          onChanged: (text){
            if(widget.onChanged != null){
              widget.onChanged(text);
            }
            setState(() {
              if(!widget.validator(text) || text.length == 0 ){
                currentColor = widget.errorColor;
              }else{
                currentColor = widget.baseColor;
              }
            });
          },
          controller: widget.controller,
          decoration: InputDecoration(
            hintStyle: TextStyle(
              color: widget.hintColor,
              fontFamily: "OpenSans",
              fontWeight: FontWeight.w300,
            ),
            border: InputBorder.none,
            hintText: widget.hint
          ),
        ),
      ),
    );
  }

}