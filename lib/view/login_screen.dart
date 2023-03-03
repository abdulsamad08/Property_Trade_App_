import 'package:craftsman_ui/utils/constants.dart';
import 'package:craftsman_ui/view/profile_info.dart';
import 'package:craftsman_ui/widgets/round_button.dart';
import 'package:craftsman_ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  List images = [
    Image.asset(ImageConstants.facebookLogo),
    Image.asset(ImageConstants.googleLogo),
    Image.asset(ImageConstants.appleLogo),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(ImageConstants.loginPageLogo),
              height: MediaQuery.of(context).size.height * 0.17,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.016,
            ),
            const Text(
              'Login to Your Account',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.020,
            ),
            Widgets.textFormField(
                prefix: const Icon(Icons.email),
                label: 'Email',
                hintText: 'Email'),
            Widgets.textFormField(
                prefix: const Icon(Icons.password),
                label: 'Password',
                hintText: 'Password'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Icon(
                    Icons.check_box,
                    color: Colors.blueAccent,
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text('Remember me'),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: RoundButton(
                name: 'Signin',
                color: const Color(0xff1E88E5),
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileInfo()));
                },
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Forgot the password?'),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.03,
                            left: MediaQuery.of(context).size.width * 0.03,
                            top: MediaQuery.of(context).size.height * 0.0029),
                        child: const Divider()),
                  ),
                  const Text(
                    "or continue with",
                    style: TextStyle(fontSize: 13),
                  ),
                  Expanded(
                    child: Container(
                        margin: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.03,
                            left: MediaQuery.of(context).size.width * 0.03,
                            top: MediaQuery.of(context).size.height * 0.0023),
                        child: const Divider()),
                  ),
                ]),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.055),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      for (var item in images)
                        Container(
                            height: MediaQuery.of(context).size.height * 0.08,
                            width: MediaQuery.of(context).size.width * 0.19,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 2,
                                  color: Colors.grey.withOpacity(0.5)),
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: item),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.030),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      textstile(
                          "Don't have an account? ",
                          const Color(0xff171717),
                          FontWeight.w500,
                          14,
                          GoogleFonts.mulish()),
                      textstile('Sign up', const Color(0xff1E88E5),
                          FontWeight.bold, 15, GoogleFonts.mulish()),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
