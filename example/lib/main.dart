import 'package:flutter/material.dart';
import 'package:social_login_all/enums/buttons.dart';
import 'package:social_login_all/google_sign_in/google_sign_in.dart';
import 'package:social_login_all/social_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Social Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SocialLoginButton(Buttons.Google,
                onPressed: () async {
                   Map<String,dynamic>? data = await GoogleLogin().init();
                   //send in Api
                },
                text: "Google Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.Microsoft,
                onPressed: () {},
                text: "Microsoft Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.Apple,
                onPressed: () {},
                text: "Apple Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.Facebook,
                onPressed: () {},
                text: "Facebook Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.GitHub,
                onPressed: () {},
                text: "GitHub Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.LinkedIn,
                onPressed: () {},
                text: "LinkedIn Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.Twitter,
                onPressed: () {},
                text: "Twitter Login",
                shape: const RoundedRectangleBorder()),
          ],
        ),
      ),
    );
  }
}
