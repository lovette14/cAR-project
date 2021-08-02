import 'package:c_ar/components/rounded_button.dart';
import 'package:c_ar/screens/SignIN/signIn_screen.dart';
import 'package:c_ar/screens/SignUp/signUp_screen.dart';
import 'package:c_ar/screens/Welcome/components/background.dart';
import 'package:flutter/material.dart';
import 'package:c_ar/screens/Welcome/components/image_carousel.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Container(
            height: (MediaQuery.of(context).size.height) / 2,
            width: MediaQuery.of(context).size.width,
            child: ImageCarousel(

            ),
          ),
          RoundedButton(
            press: (){
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context){
                    return SignUpScreen();
                  },
                ),
              );
            }, 
          text: 'Sign up', 
          width: size.width * 0.8,
          ),
          
          RoundedButton(
          press: () {
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context){
                  return SignInScreen();
                  },
                ),
              );
            }, 
          color: Colors.blue.shade50,
          textColor: Colors.blue,
          text: 'Sign in',
          width: size.width * 0.8,
          ),
          ],
        ),
      )
    );
  }
}

