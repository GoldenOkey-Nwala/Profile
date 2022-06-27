import 'package:flutter/material.dart';
import 'package:profile/screens/login_screen.dart';
import 'package:profile/screens/welcome_screen.dart';
import 'package:profile/widgets/constants.dart';

void main() => runApp(
      MaterialApp(
        title: 'Profile',
        theme: ThemeData(scaffoldBackgroundColor: kPrimaryLightColor),
        debugShowCheckedModeBanner: false,
        //home: const WelcomeScreen(),
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomeScreen(),
          '/login': (context) => const Login(),
        },
      ),
    );
