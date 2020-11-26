import 'package:flutter/material.dart';
import 'package:flutter_login/screens/text_field_container.dart';

class RoundedInputFieldPassword extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputFieldPassword({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextFormField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          hintText: hintText,
          labelText: "Password",
          border: InputBorder.none,
        ),
        validator: (String value) {
          if (value.isEmpty) {
            return 'Input your Password !';
          }
        },
      ),
    );
  }
}
