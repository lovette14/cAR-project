import 'package:c_ar/screens/Welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key, 
    required this.child,
    
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 25,
            left:0,
            child: IconButton(
              onPressed: () {
                Navigator.push
                (context, 
                MaterialPageRoute(
                  builder: (context)
                  {return WelcomeScreen();
                },
              ),
            );
}, 
              icon: Icon(
                Icons.arrow_back_sharp
              ),
              color: Colors.purple[200],
            ),
          ),
          Positioned(
            top: 40,
            left: 170,
            child: Icon(
              Icons.car_repair_outlined,
              color: Colors.purple[200],
              size: 70)
              ),
              child,
          ],
        ),

    );
  }
}