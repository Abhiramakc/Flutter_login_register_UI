import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {

  final String hintText;
  final IconData prefIcon;
  final IconData sufIcon;

  InputPassword({this.hintText, this.prefIcon, this.sufIcon});

  @override
  _InputPasswordState createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {

  bool obscure = true;

  void _toggleObscure() {
    setState(() {
      if(obscure == true){
        obscure = false;
      } else {
        obscure = true;
      }

    });
  }



  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          primaryColor: Colors.grey
      ),
      child: TextField(

        obscureText: obscure,
        decoration: InputDecoration(
          hintText: widget.hintText,
          prefixIcon: Icon(
            widget.prefIcon,
            color: Colors.black,
            size: 24.0,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              widget.sufIcon,
              color: Colors.black,
              size: 24.0,
            ),
            onPressed: () {
              _toggleObscure();
            },
          ),
        ),
      ),
    );
  }
}
