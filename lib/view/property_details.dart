import 'package:craftsman_ui/utils/constants.dart';
import 'package:craftsman_ui/view/discover_property.dart';
import 'package:craftsman_ui/widgets/items.dart';
import 'package:craftsman_ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PropertyDetails extends StatelessWidget {
  const PropertyDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 37, right: 37, top: 15),
            child: Row(
              children: [
                Center(
                  child: textstile('Detail', const Color(0xff171717),
                      FontWeight.w800, 24, GoogleFonts.mulish()),
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffEAF1FF),
                  ),
                  child: Center(child: Image.asset(ImageConstants.vectorArrow)),
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset(
              ImageConstants.craftsmanHouse,
              height: 310,
              width: 311,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Row(
              children: [
                Column(
                  children: [
                    RichText(
                      text: const TextSpan(
                        style: TextStyle(color: Colors.black, fontSize: 36),
                        children: [
                          WidgetSpan(
                              child: SizedBox(
                            height: 6,
                          )),
                          TextSpan(
                            text: 'CRAFTSMAN HOUSE\n',
                            style: TextStyle(
                                color: Color(0xff171717),
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                          TextSpan(
                            text: '520 N Beaudry Ave, Los Angeles',
                            style: TextStyle(
                                color: Color(0xff0F2F44), fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xffEAF1FF),
                  ),
                  child: Center(
                    child: Image.asset(ImageConstants.vecBookmark),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 35, top: 10, right: 97, bottom: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image(
                  image: AssetImage(ImageConstants.bed),
                ),
                textstile('4 Baths', const Color(0xff0F2F44), FontWeight.w400,
                    12, GoogleFonts.mulish()),
                Image(
                  image: AssetImage(ImageConstants.bath),
                ),
                textstile('4 Beds', const Color(0xff0F2F44), FontWeight.w400,
                    12, GoogleFonts.mulish()),
                Image(
                  image: AssetImage(ImageConstants.car),
                ),
                textstile('1 Garage', const Color(0xff0F2F44), FontWeight.w400,
                    12, GoogleFonts.mulish()),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 36, left: 36, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(ImageConstants.avatarpic1),
                ),
                const SizedBox(
                  width: 12,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Colors.black, fontSize: 36),
                    children: [
                      WidgetSpan(
                          child: SizedBox(
                        height: 6,
                      )),
                      TextSpan(
                        text: 'Rebecca Tetha\n',
                        style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: 'Owner Craftsman House',
                        style: TextStyle(
                            color: Color(0xff0F2F44),
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  height: 30,
                  width: 84,
                  decoration: BoxDecoration(
                      color: const Color(0xff103144),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.call,
                        size: 18,
                        color: Colors.white,
                      ),
                      textstile('Call', Colors.white, FontWeight.w700, 16,
                          GoogleFonts.mulish())
                    ],
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: textstile(
                'Completely redone in 2021. 4 bedrooms. 2 bathrooms. 1\ngarahe. amazing curb oppeal and enterain areawater\nvews. Tons of built-ins & extras. Read More',
                const Color(0xff0F2F44),
                FontWeight.w400,
                12,
                GoogleFonts.mulish()),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
                padding: const EdgeInsets.only(
                    right: 37, left: 36, top: 10, bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textstile(
                      'Gallery',
                      const Color(0xff0F2F44),
                      FontWeight.w600,
                      16,
                      GoogleFonts.mulish(),
                    ),
                    ItemWidget(),
                    textstile(
                      'Price',
                      const Color(0xff0F2F44),
                      FontWeight.w600,
                      16,
                      GoogleFonts.mulish(),
                    ),
                    Row(
                      children: [
                        textstile(
                          '\$5990000',
                          const Color(0xff0F2F44),
                          FontWeight.w800,
                          24,
                          GoogleFonts.mulish(),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DiscoverProperty()));
                          },
                          child: Container(
                              height: 36,
                              width: 128,
                              decoration: BoxDecoration(
                                  color: const Color(0xff103144),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                child: textstile('BUY NOW', Colors.white,
                                    FontWeight.w700, 16, GoogleFonts.mulish()),
                              )),
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
