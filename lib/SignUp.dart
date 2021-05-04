import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/Input_field.dart';
import 'package:flutter_task/Input_field_pass.dart';

class SignUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      'Register in to get started',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.grey[700]
                    ),
                  ),

                  SizedBox(
                    height: 8.0,
                  ),

                  Text(
                    'Experience the all new App!',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.grey[700]
                    ),
                  )
                ],
              ),

              InputField(
                hintText: 'Name',
                prefIcon: Icons.person,
                keyboardtype: TextInputType.name,
              ),

              InputField(
                hintText: 'E-mail ID',
                prefIcon: Icons.email,
                keyboardtype: TextInputType.emailAddress,
              ),

              InputField(
                hintText: 'Mobile Number',
                prefIcon: Icons.phone,
                keyboardtype: TextInputType.number,
              ),

              InputPassword(
                hintText: 'Password',
                prefIcon: Icons.lock,
                sufIcon: Icons.remove_red_eye,
              ),

              InputPassword(
                hintText: 'Confirm Password',
                prefIcon: Icons.lock,
                sufIcon: Icons.remove_red_eye,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  ElevatedButton(
                    onPressed: () {

                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.amber),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Already have an account?',
                        style: TextStyle(
                          color: Colors.grey[700],
                          fontSize: 17.0,
                        ),
                      ),

                      Container(
                          alignment: Alignment.center,
                          child: TextButton(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18.0
                              ),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/LogIn');
                            },
                          )
                      )
                    ],
                  ),





                ],
              ),

                ],
              ),




        ),
      ),
    );
  }
}
