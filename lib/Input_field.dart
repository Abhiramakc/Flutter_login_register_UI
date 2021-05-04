import 'package:flutter/material.dart';

class InputField extends StatefulWidget {

   final IconData prefIcon;
   final String hintText;
   final TextInputType keyboardtype;


  InputField({this.prefIcon, this.hintText,this.keyboardtype});

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {

  String inputValue;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryColor: Colors.grey
      ),
      child: TextField(
        keyboardType: widget.keyboardtype,
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: Icon(
            widget.prefIcon,
            color: Colors.black,
            size: 24.0,
          ),
        ),
        onChanged: (value) {
          setState(() {
            inputValue = value;
          });
        },
      ),
    );
  }
}
