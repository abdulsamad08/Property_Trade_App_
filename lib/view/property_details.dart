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
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.04,
                right: MediaQuery.of(context).size.height * 0.04,
                top: MediaQuery.of(context).size.height * 0.06,
                bottom: MediaQuery.of(context).size.height * 0.02),
            child: Row(
              children: [
                Center(
                  child: textstile('Detail', const Color(0xff171717),
                      FontWeight.w800, 24, GoogleFonts.mulish()),
                ),
                const Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.12,
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
              width: MediaQuery.of(context).size.width * 0.7,
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 37, right: 37, top: 10),
            child: Row(
              children: [
                Column(
                  children: [
                    RichText(
                      text: TextSpan(
                        style:
                            const TextStyle(color: Colors.black, fontSize: 36),
                        children: [
                          WidgetSpan(
                              child: SizedBox(
                            height: MediaQuery.of(context).size.height * 0.05,
                          )),
                          const TextSpan(
                            text: 'CRAFTSMAN HOUSE\n',
                            style: TextStyle(
                                color: Color(0xff171717),
                                fontSize: 20,
                                fontWeight: FontWeight.w800),
                          ),
                          const TextSpan(
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
                  height: MediaQuery.of(context).size.height * 0.057,
                  width: MediaQuery.of(context).size.width * 0.12,
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
            padding: EdgeInsets.only(
                left: 35,
                top: 10,
                right: 97,
                bottom: MediaQuery.of(context).size.height * 0.01),
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
            padding: EdgeInsets.only(
                right: 36,
                left: 36,
                bottom: MediaQuery.of(context).size.height * 0.01),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 32,
                  backgroundImage: AssetImage(ImageConstants.avatarpic1),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.03,
                ),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black, fontSize: 36),
                    children: [
                      WidgetSpan(
                          child: SizedBox(
                        height: MediaQuery.of(context).size.height * 0.039,
                      )),
                      const TextSpan(
                        text: 'Rebecca Tetha\n',
                        style: TextStyle(
                            color: Color(0xff171717),
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      const TextSpan(
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
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: MediaQuery.of(context).size.width * 0.23,
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
                padding: EdgeInsets.only(
                    right: 37,
                    left: 36,
                    top: MediaQuery.of(context).size.height * 0.03,
                    bottom: MediaQuery.of(context).size.height * 0.01),
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
                              height: MediaQuery.of(context).size.height * 0.05,
                              width: MediaQuery.of(context).size.width * 0.36,
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
