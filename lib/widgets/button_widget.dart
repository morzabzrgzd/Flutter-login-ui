import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final onTab;
  final name;

  Button({this.onTab , @required this.name});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTab,
      child: Container(
        height: 50,
        alignment: Alignment.center,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.red.shade400,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          name,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
  }
}
