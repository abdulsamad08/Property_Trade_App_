import 'package:craftsman_ui/utils/constants.dart';
import 'package:craftsman_ui/widgets/categories.dart';
import 'package:craftsman_ui/widgets/houses_widget.dart';
import 'package:craftsman_ui/widgets/properties.dart';
import 'package:craftsman_ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/bottm_nav_bar.dart';

class DiscoverProperty extends StatelessWidget {
  const DiscoverProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavBarto(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black, fontSize: 36),
                      children: [
                        TextSpan(
                          text: 'Location\n',
                          style: TextStyle(
                              color: Color(0xff171717),
                              fontSize: 13,
                              fontWeight: FontWeight.w400),
                        ),
                        TextSpan(
                          text: 'Los Angeles, CA',
                          style: TextStyle(
                              color: Color(0xff0F2F44),
                              fontSize: 14,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    backgroundImage: AssetImage(ImageConstants.avatarpic2),
                  )
                ],
              ),
            ),
            textstile(
                'Discover Best\nSuitable Property',
                const Color(0xff0F2F44),
                FontWeight.w800,
                24,
                GoogleFonts.mulish()),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.015,
            ),
            CatogoriesWidget(),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.014),
              child: textstile('Best for you', const Color(0xff0F2F44),
                  FontWeight.w600, 16, GoogleFonts.mulish),
            ),
            const HouseWidget(),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  bottom: MediaQuery.of(context).size.height * 0.014),
              child: textstile('Nearby your Location', const Color(0xff0F2F44),
                  FontWeight.w600, 16, GoogleFonts.mulish),
            ),
            const NearByLocation(),
          ],
        ),
      ),
    );
  }
}
