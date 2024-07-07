import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../core/colors/palette.dart';

class TextfieldUser extends StatelessWidget {
  const TextfieldUser({
    Key? key,
    this.hintText = '',
    this.icon,
    this.obscuretext = false,
    required this.backgroundColor,
    this.iconColor = Palette.blueGray,
  }) : super(key: key);

  final String hintText;
  final IconData? icon;
  final Color iconColor;
  final bool obscuretext;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 2.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: backgroundColor,
      ),
      child: TextField(
        obscureText: obscuretext,
        style: const TextStyle(fontSize: 22),
        decoration: InputDecoration(
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  color: iconColor,
                  size: 35,
                )
              : null,
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Palette.grey400,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
