import 'package:flutter/material.dart';
import 'package:profile/widgets/constants.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ClipOval(
                  child: Image.asset(
                    'assets/images/one.jpg',
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Golden Okey-Nwala',
                  style: TextStyle(
                      fontSize: 25,
                      color: kPrimaryTextColor,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  icon: const Icon(
                    Icons.login,
                    size: 35,
                  ),
                  label: const Text(
                    'LOGIN',
                    style: TextStyle(fontSize: 25),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
