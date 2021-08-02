import 'package:c_ar/components/text_field_container.dart';
import 'package:flutter/material.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;
  
  const RoundedPasswordField({
    Key? key, 
    required this.onChanged, 
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(0, 0, 0, 10),
          border: InputBorder.none,
          icon: Icon(
            Icons.lock_outline,
            color: Colors.blue,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}

