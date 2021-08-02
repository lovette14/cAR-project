import 'package:flutter/material.dart';

class AppBar extends StatelessWidget {
  const AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
           Icon(
      Icons.person_rounded, size: 2.0,color: Colors.white,
      ),
          Icon(
            Icons.favorite_rounded, size: 2.0,color: Colors.white,
          ),
          Image.asset("asset/icons/car_logo.png"),


    ],
      ),
    );
  }
}
