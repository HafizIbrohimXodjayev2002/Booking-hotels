import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:imtihon2/ui/errorPage.dart';
import 'package:imtihon2/ui/loading.dart';
import 'package:imtihon2/ui/loginPage.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Future<FirebaseApp> _init = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _init,
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return ErrorPage();
        }

        if (snapshot.connectionState == ConnectionState.done) {
          return LoginPage();
        }

        return LoadingPage();
      },
    );
  }
}
