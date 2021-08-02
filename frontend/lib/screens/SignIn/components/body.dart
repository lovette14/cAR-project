import 'package:c_ar/components/rounded_button.dart';
import 'package:c_ar/components/rounded_input_field.dart';
import 'package:c_ar/components/rounded_password_field.dart';
import 'package:c_ar/screens/SignIN/components/background.dart';
import 'package:c_ar/screens/SignUp/signUp_screen.dart';
import 'package:flutter/material.dart';
import 'package:c_ar/services/auth.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              Padding(
                padding: EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: Text(
                  'SIGN IN',
                  style: TextStyle(
                    fontWeight: FontWeight.w500, 
                    fontSize: 18, 
                    color:Colors.indigo[500]
                    ),
                  ),
              ),
                
                SizedBox(height:10),
                
                RoundedInputField(
                  hintText: "Enter Your Email Address",
                  onChanged: (value){
                  },
                ),
                
                RoundedPasswordField(onChanged: (value){}, hintText: 'Enter Password',
                ),
                
                RoundedButton(
                  press: (){}, 
                  text: 'Sign in', 
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
                  'Dont have an account?',
                  style: TextStyle(color: Colors.grey),
                ),
                
                TextButton(
                  onPressed: (){
                    Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) {
                          return SignUpScreen();
                          },
                        ),
                      );
                    }, 
                  child: Text('Sign Up'),
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

