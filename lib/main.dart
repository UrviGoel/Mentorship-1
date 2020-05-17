import 'package:dbapp/screens/wrapper.dart';
import 'package:dbapp/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/cupertino.dart';
import 'package:dbapp/models/user.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<FirebaseUser>.value(
        value:AuthService().user,
          child: MaterialApp(
          theme: defaultTargetPlatform == TargetPlatform.iOS ? kIOSTheme : KDefaultTheme,
          home:Wrapper(),
      ),
    );
  }
}

final ThemeData kIOSTheme = new ThemeData(
  primarySwatch: Colors.teal,
  primaryColor: Colors.teal[200],
  primaryColorBrightness: Brightness.light,
);

final ThemeData KDefaultTheme = new ThemeData(
  primarySwatch: Colors.teal,
  accentColor: Colors.teal[200],
);

