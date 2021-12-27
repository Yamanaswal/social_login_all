library social_login_all;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:social_login_all/widgets/button_components.dart';
import 'enums/buttons.dart';
import 'google_sign_in/google_sign_in.dart';

class SocialLoginButton extends StatelessWidget {
  final Function() onPressed;
  final Buttons button;
  final String? text;
  final ShapeBorder shape;

  const SocialLoginButton(
    this.button, {
    Key? key,
    this.text,
    required this.onPressed,
    required this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Buttons.Email:
        return SocialButton(
          key: const ValueKey("Email"),
          text: text ?? "Sign In With Email",
          icon: Icons.email,
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.Google:
        return SocialButton(
          key: const ValueKey("Google"),
          text: text ?? "Sign In With Google",
          image: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset('assets/images/google_logo.png',
                package: 'social_login', width: 27),
          ),
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.Facebook:
        return SocialButton(
          key: const ValueKey("Facebook"),
          text: text ?? "Sign In With Facebook",
          icon: FontAwesomeIcons.facebookF,
          onPressed: onPressed,
          backgroundColor: const Color(0xFF3B5998),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
      case Buttons.GitHub:
        return SocialButton(
          key: const ValueKey("Github"),
          text: text ?? "Sign In With Github",
          icon: FontAwesomeIcons.github,
          onPressed: onPressed,
          backgroundColor: const Color(0xFF444444),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
      case Buttons.Apple:
        return SocialButton(
          key: const ValueKey("Apple"),
          text: text ?? "Sign In With Apple",
          icon: FontAwesomeIcons.apple,
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.LinkedIn:
        return SocialButton(
          key: const ValueKey("LinkedIn"),
          text: text ?? "Sign In With LinkedIn",
          icon: FontAwesomeIcons.linkedin,
          onPressed: onPressed,
          backgroundColor: const Color(0xFF007BB6),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
      case Buttons.Microsoft:
        return SocialButton(
          key: const ValueKey("Microsoft"),
          text: text ?? "Sign In With Microsoft",
          image: ClipRRect(
            borderRadius: BorderRadius.circular(0.0),
            child: Image.asset(
              'assets/images/microsoft_logo.png',
              package: 'social_login',
              height: 24,
            ),
          ),
          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape,
        );
      case Buttons.Twitter:
        return SocialButton(
          key: const ValueKey("Twitter"),
          text: text ?? "Sign In With Twitter",
          icon: FontAwesomeIcons.twitter,
          onPressed: onPressed,
          backgroundColor: const Color(0xFF1DA1F2),
          textColor: Colors.white,
          iconColor: Colors.white,
          shape: shape,
        );
    }
  }
}
