import 'package:craftsman_ui/utils/constants.dart';
import 'package:craftsman_ui/view/property_details.dart';
import 'package:craftsman_ui/widgets/round_button.dart';
import 'package:craftsman_ui/widgets/text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 25, top: 20),
              alignment: Alignment.topLeft,
              child: const Text(
                'Fill Your Profle',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 17),
              child: SizedBox(
                child: CircleAvatar(
                  radius: 70.0,
                  child: CircleAvatar(
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25.0,
                        child: Icon(
                          Icons.camera_alt,
                          size: 18.0,
                          color: Color(0xff171717),
                        ),
                      ),
                    ),
                    radius: 80.0,
                    backgroundImage: AssetImage(ImageConstants.defaultProfile),
                  ),
                ),
              ),
            ),
            Widgets.textFormField(label: 'Full Name'),
            Widgets.textFormField(label: 'NickName'),
            Widgets.textFormField(
              label: 'Date Of Birth',
              suffix: const Icon(
                Icons.celebration_rounded,
              ),
            ),
            Widgets.textFormField(
              label: 'Email',
              suffix: const Icon(
                Icons.email_outlined,
              ),
            ),
            Widgets.textFormField(
              label: 'Gender',
              suffix: const Icon(
                CupertinoIcons.triangle_fill,
                size: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: RoundButton(
                name: 'Continue',
                color: const Color(0xff1E88E5),
                onPress: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PropertyDetails()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
