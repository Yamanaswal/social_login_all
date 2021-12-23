import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final Color textColor, backgroundColor, iconColor;
  final Function() onPressed;
  final String text;
  final IconData? icon;
  final Widget? image;
  final ShapeBorder? shape;

  const SocialButton(
      {Key? key,
      required this.backgroundColor,
      required this.onPressed,
      required this.text,
      this.icon,
      required this.textColor,
      required this.iconColor,
      this.image,
      this.shape}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: key,
      onPressed: onPressed,
      color: backgroundColor,
      shape: shape ?? ButtonTheme.of(context).shape,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 13,
            ),
            child: image ??
                Icon(
                  icon,
                  size: 20,
                  color: iconColor,
                ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              text,
              style: TextStyle(
                fontFamily: 'Roboto',
                color: textColor,
                fontSize: 14,
                backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
