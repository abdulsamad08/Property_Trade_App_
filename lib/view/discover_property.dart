import 'package:craftsman_ui/utils/constants.dart';
import 'package:craftsman_ui/widgets/categories.dart';
import 'package:craftsman_ui/widgets/houses_widget.dart';
import 'package:craftsman_ui/widgets/properties.dart';
import 'package:craftsman_ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DiscoverProperty extends StatelessWidget {
  const DiscoverProperty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(),
      // bottomNavigationBar: Container(
      //   height: 45,
      //   decoration: const BoxDecoration(
      //       color: Color(0xff0F2F44),
      //       borderRadius: BorderRadius.only(
      //           topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(
      //       horizontal: 20,
      //     ),
      //     child: GNav(
      //         backgroundColor: const Color(0xff0F2F44),
      //         color: Colors.white,
      //         activeColor: Colors.white,
      //         gap: 8,
      //         padding: const EdgeInsets.all(10),
      //         tabs: [
      //           GButton(
      //             onPressed: () {},
      //             icon: Icons.home,
      //             text: 'Home',
      //           ),
      //           GButton(onPressed: () {}, icon: Icons.search, text: 'Search'),
      //           GButton(
      //               onPressed: () {}, icon: Icons.card_travel, text: 'cart'),
      //           GButton(onPressed: () {}, icon: Icons.person, text: 'Person'),
      //         ]),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
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
            const SizedBox(
              height: 20,
            ),
            CatogoriesWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10),
              child: textstile('Best for you', const Color(0xff0F2F44),
                  FontWeight.w600, 16, GoogleFonts.mulish),
            ),
            const HouseWidget(),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 10),
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
