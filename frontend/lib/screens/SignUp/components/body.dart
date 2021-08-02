import 'package:c_ar/components/rounded_button.dart';
import 'package:c_ar/components/rounded_input_field.dart';
import 'package:c_ar/components/rounded_password_field.dart';
import 'package:c_ar/screens/SignIN/signIn_screen.dart';
import 'package:c_ar/screens/SignUp/components/background.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  <Widget>[
            Padding(
                padding: EdgeInsets.fromLTRB(0, 200, 0, 0),
                child: Text(
                  'SIGN UP',
                  style: TextStyle(
                    fontWeight: FontWeight.w500, 
                    fontSize: 18, 
                    color:Colors.indigo[500]
                    ),
                  ),
              ),
      
            RoundedInputField(
                  hintText: "Enter Full Name",
                  onChanged: (value){
                  },
                ),
      
            RoundedInputField(
                  hintText: "Enter Your Email Address",
                  onChanged: (value){
                  },
                ),
      
            RoundedPasswordField(onChanged: (value){}, hintText: 'Enter Password',
                ),
      
            RoundedPasswordField(onChanged: (value){}, hintText: 'Confirm Password',
                ),
      
            RoundedButton(
                  press: (){}, 
                  text: 'Sign Up', 
                  width: size.width * 0.6,
                  color: Colors.blue.shade50,
                  textColor: Colors.blue,
                ),
      
            Text(
                  'OR',
                  style: TextStyle(color: Colors.grey),
                ),
            RoundedButton(
                  press: (){}, 
                  text: 'Continue with Facebook', 
                  width: size.width * 0.6,
                  color: Colors.blue.shade700,
                  textColor: Colors.white,
                ),
                
            RoundedButton(
                  press: (){}, 
                  text: 'Sign in with Google', 
                  width: size.width * 0.6,
                  color: Colors.red.shade600,
                  textColor: Colors.white,
                ),
                
            RoundedButton(
                  press: (){}, 
                  text: 'Sign in with Apple ID', 
                  width: size.width * 0.6,
                  color: Colors.grey.shade800,
                  textColor: Colors.white,
                ),
                
            Text(
                  'Already have an account?',
                  style: TextStyle(color: Colors.grey),
                ),
                
            TextButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) {
                          return SignInScreen();
                          },
                        ),
                      );
                    }, 
                  child: Text('Sign In'),
                  style: TextButton.styleFrom(
                    primary: Colors.grey,
                    ),
            )
      
          ],
        ),
      ),
    );
  }
}