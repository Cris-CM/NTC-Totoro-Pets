import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../core/colors/palette.dart';

class TextfieldUser extends StatefulWidget {
  const TextfieldUser({
    Key? key,
    this.hintText = '',
    this.icon,
    this.obscuretext = false,
    this.iconColor = Palette.greytranparent,
    this.controller,
  }) : super(key: key);

  final String hintText;
  final IconData? icon;
  final Color iconColor;
  final bool obscuretext;
  final TextEditingController? controller;

  @override
  State<TextfieldUser> createState() => _TextfieldUserState();
}

class _TextfieldUserState extends State<TextfieldUser> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscuretext;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 2.w),
      child: TextFormField(
        obscureText: _obscureText,
        controller: widget.controller,
        style: const TextStyle(fontSize: 20),
        decoration: InputDecoration(
          prefixIcon: widget.icon != null
              ? Icon(
                  widget.icon,
                  color: widget.iconColor,
                  size: 35,
                )
              : null,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            fontSize: 20,
            color: Palette.grey400,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Palette.greytranparent),
          ),
          suffixIcon: widget.obscuretext
              ? IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Palette.grey400,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                )
              : null,
        ),
      ),
    );
  }
}
