import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double width;
  final VoidCallback press;
  final Color color, textColor;
  const RoundedButton({
    Key? key, 
    this.color = Colors.blue, 
    this.textColor = Colors.white, 
    required this.text, 
    required this.press, 
    required this.width,
    
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: width,
      height: size.height * .065,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29), 
          child: FlatButton(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40 ),
            color: color,
            onPressed: press, 
            child: Text(
              text,
              style: TextStyle(color: textColor))
            ),
        ),
    );
  }
}

