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
      style: ElevatedButton.styleFrom(
          backgroundColor: btnColor,
          shadowColor: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21),
          )),
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
