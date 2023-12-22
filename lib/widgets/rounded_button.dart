// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:ui';

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.btnName,
    this.icon,
    this.btnColor = Colors.blue,
    this.textStyle,
    this.callBack,
  }) : super(key: key);
  final String? btnName;
  final Icon? icon;
  final Color? btnColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callBack!();
      },
      child: icon != null
          ? Row(
              children: [
                icon!,
                Text(
                  btnName!,
                  style: textStyle,
                ),
              ],
            )
          : Text(
              btnName!,
              style: textStyle,
            ),
    );
  }
}
