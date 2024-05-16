import 'package:flutter/material.dart';
import '../../core/colors/palette.dart';

class TextfieldUser extends StatelessWidget {
  const TextfieldUser({
    Key? key,
    this.hintText = '',
    this.icon = Icons.mail_outline,
    this.obscuretext = false,
  }) : super(key: key);

  final String hintText;
  final IconData icon;
  final bool obscuretext;

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
        obscureText:
            obscuretext, // Configurar para mostrar como contraseña si es necesario
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
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Palette.greytranparent,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
