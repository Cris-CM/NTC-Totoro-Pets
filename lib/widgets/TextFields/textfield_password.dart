import 'package:flutter/material.dart';

import '../../core/colors/palette.dart';

class TextFieldPassword extends StatelessWidget {
  const TextFieldPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 470,
      padding: const EdgeInsetsDirectional.only(start: 35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Palette.blueGray,
      ),
      child: const TextField(
        style: TextStyle(fontSize: 22),
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.lock_outline,
                color: Palette.greytranparent,
                size: 35,
              ),
            ),
            hintText: 'Password',
            fillColor: Palette.purple,
            hintStyle: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Palette.greytranparent),
            border: InputBorder.none),
      ),
    );
  }
}
