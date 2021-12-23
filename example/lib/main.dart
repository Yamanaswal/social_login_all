import 'package:flutter/material.dart';
import 'package:social_login/enums/buttons.dart';
import 'package:social_login/social_login.dart';

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
                onPressed: () {},
                text: "Google Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.Microsoft,
                onPressed: () {},
                text: "Google Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.Apple,
                onPressed: () {},
                text: "Google Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.Facebook,
                onPressed: () {},
                text: "Google Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.GitHub,
                onPressed: () {},
                text: "Google Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.LinkedIn,
                onPressed: () {},
                text: "Google Login",
                shape: const RoundedRectangleBorder()),
            SocialLoginButton(Buttons.Twitter,
                onPressed: () {},
                text: "Google Login",
                shape: const RoundedRectangleBorder()),
          ],
        ),
      ),
    );
  }
}
