import 'package:flutter/material.dart';

import '../../core/colors/palette.dart';

class TextfieldUser extends StatelessWidget {
  const TextfieldUser({
    super.key,
    required this.hintext,
    required this.icon,
  });

  final String hintext;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 470,
      padding: const EdgeInsetsDirectional.only(start: 35),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Palette.blueGray,
      ),
      child: TextField(
        style: const TextStyle(fontSize: 22),
        decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                icon,
                color: Palette.greytranparent,
                size: 35,
              ),
            ),
            hintText: hintext,
            fillColor: Palette.purple,
            hintStyle: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Palette.greytranparent),
            border: InputBorder.none),
      ),
    );
  }
}
