import 'package:flutter/material.dart';



class BuildTextField extends StatelessWidget {
  final icon;
  var letterSpacing;
  final hintText;

  BuildTextField({@required this.icon, this.letterSpacing, this.hintText});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          suffixIcon: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Icon(
              icon,
              color: Colors.grey,
            ),
          ),
          hintStyle: TextStyle(
            fontSize: 20,
            wordSpacing: 4,
            letterSpacing: letterSpacing,
          ),
        ),
      ),
    );
  }
}
