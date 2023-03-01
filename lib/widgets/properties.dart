import 'package:craftsman_ui/utils/constants.dart';
import 'package:craftsman_ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NearByLocation extends StatelessWidget {
  const NearByLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 330,
      decoration: const BoxDecoration(
        color: Color(0xffEAF1FF),
      ),
      child: Row(
        children: [
          Image(
            image: AssetImage(
              ImageConstants.ranchHouse,
            ),
            height: 100,
            fit: BoxFit.contain,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 15, bottom: 12),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textstile(
                      "RANCH HOME",
                      const Color(0xff0F2F44),
                      FontWeight.w700,
                      12,
                      GoogleFonts.mulish(),
                    ),
                    textstile(
                      "520 N Btoudry Ave Los Angeles",
                      const Color(0xff0F2F44).withOpacity(0.5),
                      FontWeight.w400,
                      10,
                      GoogleFonts.mulish(),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          ImageConstants.bed,
                          height: 20,
                        ),
                        textstile(
                          "4 Beds",
                          const Color(0xff0F2F44).withOpacity(0.5),
                          FontWeight.w400,
                          9,
                          GoogleFonts.mulish(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          ImageConstants.bath,
                          height: 20,
                        ),
                        textstile(
                          "4 Baths",
                          const Color(0xff0F2F44).withOpacity(0.5),
                          FontWeight.w400,
                          9,
                          GoogleFonts.mulish(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          ImageConstants.car,
                          height: 20,
                        ),
                        textstile(
                          "1 Garage",
                          const Color(0xff0F2F44).withOpacity(0.5),
                          FontWeight.w400,
                          9,
                          GoogleFonts.mulish(),
                        ),
                      ],
                    )
                  ]))
        ],
      ),
    );
  }
}
