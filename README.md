## Features
1.Social Button
1.Social Integration

## Platform integration

## 1 - Google Login - Platform integration

### Android integration

To access Google Sign-In, you'll need to make sure to
[register your application](https://firebase.google.com/docs/android/setup).

You don't need to include the google-services.json file in your app unless you
are using Google services that require it. You do need to enable the OAuth APIs
that you want, using the
[Google Cloud Platform API manager](https://console.developers.google.com/). For
example, if you want to mimic the behavior of the Google Sign-In sample app,
you'll need to enable the
[Google People API](https://developers.google.com/people/).

Make sure you've filled out all required fields in the console for
[OAuth consent screen](https://console.developers.google.com/apis/credentials/consent).
Otherwise, you may encounter `APIException` errors.

### iOS integration

This plugin requires iOS 9.0 or higher.

1. [First register your application](https://firebase.google.com/docs/ios/setup).
2. Make sure the file you download in step 1 is named
   `GoogleService-Info.plist`.
3. Move or copy `GoogleService-Info.plist` into the `[my_project]/ios/Runner`
   directory.
4. Open Xcode, then right-click on `Runner` directory and select
   `Add Files to "Runner"`.
5. Select `GoogleService-Info.plist` from the file manager.
6. A dialog will show up and ask you to select the targets, select the `Runner`
   target.
7. Then add the `CFBundleURLTypes` attributes below into the
   `[my_project]/ios/Runner/Info.plist` file.

```xml
<!-- Put me in the [my_project]/ios/Runner/Info.plist file -->
<!-- Google Sign-in Section -->
<key>CFBundleURLTypes</key>
<array>
	<dict>
		<key>CFBundleTypeRole</key>
		<string>Editor</string>
		<key>CFBundleURLSchemes</key>
		<array>
			<!-- TODO Replace this value: -->
			<!-- Copied from GoogleService-Info.plist key REVERSED_CLIENT_ID -->
			<string>com.googleusercontent.apps.861823949799-vc35cprkp249096uujjn0vvnmcvjppkn</string>
		</array>
	</dict>
</array>
<!-- End of the Google Sign-in Section -->
```

#### iOS additional requirement

Note that according to
https://developer.apple.com/sign-in-with-apple/get-started, starting June 30,
2020, apps that use login services must also offer a "Sign in with Apple" option
when submitting to the Apple App Store.

Consider also using an Apple sign in plugin from pub.dev.

The Flutter Favorite
[sign_in_with_apple](https://pub.dev/packages/sign_in_with_apple) plugin could
be an option.

### Web integration

For web integration details, see the
[`google_sign_in_web` package](https://pub.dev/packages/google_sign_in_web).

