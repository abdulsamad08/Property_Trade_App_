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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.04,
                top: MediaQuery.of(context).size.height * 0.04),
            alignment: Alignment.topLeft,
            child: const Text(
              'Fill Your Profle',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.02,
                bottom: MediaQuery.of(context).size.height * 0.04),
            child: SizedBox(
              child: CircleAvatar(
                radius: 60,
                child: CircleAvatar(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20.0,
                      child: Icon(
                        Icons.camera_alt,
                        size: MediaQuery.of(context).size.height * 0.032,
                        color: Color(0xff171717),
                      ),
                    ),
                  ),
                  radius: 70.0,
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
            suffix: Icon(
              CupertinoIcons.triangle_fill,
              size: MediaQuery.of(context).size.height * 0.02,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.height * 0.03,
              right: MediaQuery.of(context).size.height * 0.03,
            ),
            child: RoundButton(
              name: 'Continue',
              color: const Color(0xff1E88E5),
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PropertyDetails()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
