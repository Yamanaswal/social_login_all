import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;

class GoogleLogin {
  GoogleSignIn _googleSignIn = GoogleSignIn(
    scopes: <String>[
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
      // 'https://www.googleapis.com/auth/cloud-platform'
    ],
  );

  Future<Map<String, dynamic>?> init() async {
    _googleSignIn = GoogleSignIn(
      scopes: <String>[
        'email',
        'https://www.googleapis.com/auth/contacts.readonly',
        // 'https://www.googleapis.com/auth/cloud-platform'
      ],
    );
    GoogleSignInAccount? signInAccount = await _googleSignIn.signIn();
    print(signInAccount);
    return await _handleGetContact(signInAccount);
  }

  Future<Map<String,dynamic>?> handleGoogleSignIn() async {
    try {
      GoogleSignInAccount? signInAccount = await _googleSignIn.signIn();
      return await _handleGetContact(signInAccount);
    } catch (error) {
      print("handleGoogleSignIn Exception ::->");
      print(error);
    }
  }

  Future<void> handleGoogleSignOut() async {
    try {
      _googleSignIn.disconnect();
    } catch (error) {
      print("handleGoogleSignOut Exception ::->");
      print(error);
    }
  }

  Future<Map<String,dynamic>?> _handleGetContact(GoogleSignInAccount? user) async {
    try {
      final http.Response response = await http.get(
        Uri.parse('https://people.googleapis.com/v1/people/me/connections'
            '?requestMask.includeField=person.names'),
        headers: user != null ? await user.authHeaders : null,
      );
      if (response.statusCode != 200) {
        print('People API ${response.statusCode} response: ${response.body}');
        return null;
      }
      final Map<String, dynamic> data = json.decode(response.body);
      print("handleGetContact Response Body:: -> ");
      print(data);
      return data;
    } catch (e) {
      print(e);
    }
  }
}
