import 'package:base_commons/main.dart';
import 'package:base_dependencies/main.dart';
import 'package:base_ds/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: EdgeInsets.symmetric(
            horizontal: defaultSpace, vertical: defaultSpace),
        child: Column(
          children: <Widget>[
            const Text('Login Screen'),
            ElevatedButton(
              child: const Text('Go to Help'),
              onPressed: () {
                Navigator.pushNamed(context, helpScreen);
              },
            )
          ],
        ),
      ),
    );
  }
}
