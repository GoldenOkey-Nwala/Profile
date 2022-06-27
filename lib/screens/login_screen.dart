import 'package:flutter/material.dart';
import 'package:profile/widgets/constants.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: true,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            title: const Text(
              'My Profile',
              style: TextStyle(
                  color: kPrimaryColor, fontFamily: 'SyneMono', fontSize: 30),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(300),
              ),
            ),
            leading: //const BackButton(color: kPrimaryColor), //This can also be used to shorten code.
                IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: const Icon(
                Icons.arrow_back_outlined,
                color: kPrimaryColor,
              ),
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            //color: const Color(0xFFF1E6FF),
            alignment: Alignment.center,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: const [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/one.jpg'),
                      radius: 120,
                    ),
                    Positioned(
                      bottom: 20,
                      right: 25,
                      child: CircleAvatar(
                        radius: 12,
                        backgroundColor: kPrimaryBackgroundColor,
                        child: Icon(Icons.add_circle_rounded),
                      ),
                    )
                  ]),
                  const SizedBox(height: 15),
                  const Text(
                    'Golden Okey-Nwala',
                    style: TextStyle(
                        fontSize: 40,
                        color: kPrimaryTextColor,
                        fontFamily: 'Cookie',
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    '''I am a Student of the department of Electrical/Electronic Engineering,\nFaculty of Engineering, University of Port Harcourt. \nI am a young Tech enthusiast, I got the passion to go into Tech in 2021 and so I attended DevFest'21 organised by Google Developers Group in December that same year.\nI have chosen Mobile App Development with Flutter as a point to begin from while I hope to expand to other areas in Tech in the future to come.''',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, fontFamily: 'IndieFlower'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
