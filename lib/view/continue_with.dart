import 'package:craftsman_ui/utils/constants.dart';
import 'package:craftsman_ui/view/login_screen.dart';
import 'package:craftsman_ui/view/profile_info.dart';
import 'package:craftsman_ui/widgets/round_button.dart';
import 'package:flutter/material.dart';

class ContinueWith extends StatelessWidget {
  const ContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 45, left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage(ImageConstants.splashLogo),
                height: 175,
                width: 175,
              ),
              const Text(
                "Let's you in",
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40, bottom: 12),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Image(
                          image: AssetImage(ImageConstants.facebookLogo),
                          width: 20.0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfileInfo()));
                        },
                        label: const Text('Continue with Facebook'),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Image(
                          image: AssetImage(ImageConstants.googleLogo),
                          width: 20.0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        label: const Text('Continue with Google'),
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        icon: Image(
                          image: AssetImage(ImageConstants.appleLogo),
                          width: 20.0,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()));
                        },
                        label: const Text('Continue with Apple'),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(
                                right: 20, left: 20, top: 8),
                            child: const Divider()),
                      ),
                      const Text(
                        "or",
                        style: TextStyle(fontSize: 16),
                      ),
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(
                                right: 20, left: 20, top: 11),
                            child: const Divider()),
                      ),
                    ])
                  ],
                ),
              ),
              RoundButton(
                name: 'Signin with password',
                color: const Color(0xff1E88E5),
                onPress: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Don't have an account?",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff0F2F44))),
                  TextButton(onPressed: () {}, child: const Text('sign up'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
