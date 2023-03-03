import 'package:craftsman_ui/utils/constants.dart';
import 'package:craftsman_ui/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HouseWidget extends StatelessWidget {
  const HouseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 81),
      child: Container(
          decoration: BoxDecoration(
            color: const Color(0xff171717),
            borderRadius: BorderRadius.circular(25),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.26,
              // width: MediaQuery.of(context).size.width * 0.4,
              child: Image.asset(
                ImageConstants.craftsmanHouse2,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    left: 15.0,
                    top: MediaQuery.of(context).size.height * 0.03,
                    bottom: MediaQuery.of(context).size.height * 0.01),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textstile(
                        "CRAFTSMAN HOUSE",
                        const Color(0xffFFFFFF),
                        FontWeight.w600,
                        16,
                        GoogleFonts.mulish(),
                      ),
                      textstile(
                        "520 N Btoudry Ave Los Angeles",
                        const Color(0xffFFFFFF).withOpacity(0.5),
                        FontWeight.w400,
                        13,
                        GoogleFonts.mulish(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            Image.asset(
                              ImageConstants.bed,
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            textstile(
                              "4 Beds",
                              const Color(0xffFFFFFF).withOpacity(0.5),
                              FontWeight.w400,
                              12,
                              GoogleFonts.mulish(),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              ImageConstants.bath,
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            textstile(
                              "4 Baths",
                              const Color(0xffFFFFFF).withOpacity(0.5),
                              FontWeight.w400,
                              12,
                              GoogleFonts.mulish(),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              ImageConstants.car,
                              height: MediaQuery.of(context).size.height * 0.02,
                            ),
                            textstile(
                              "1 Garage",
                              const Color(0xffFFFFFF).withOpacity(0.5),
                              FontWeight.w400,
                              12,
                              GoogleFonts.mulish(),
                            ),
                          ],
                        ),
                      )
                    ]))
          ])),
    );
  }
}
