import 'package:c_ar/components/text_field_container.dart';
import 'package:flutter/material.dart';


class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key, 
    required this.hintText, 
     this.icon = Icons.person_rounded ,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField( 
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          border: InputBorder.none,
          icon: Icon(
            icon,
            color: Colors.blue,
          ),
          hintText:hintText,
          ),
        
        ),
    );
  }
}

