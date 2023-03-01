import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomAppBar extends StatefulWidget {
  const BottomAppBar({super.key});

  @override
  State<BottomAppBar> createState() => _BottomAppBarState();
}

class _BottomAppBarState extends State<BottomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        decoration: const BoxDecoration(
            color: Color(0xff0F2F44),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: GNav(
              backgroundColor: const Color(0xff0F2F44),
              color: Colors.white,
              activeColor: Colors.white,
              gap: 8,
              padding: const EdgeInsets.all(10),
              tabs: [
                GButton(
                  onPressed: () {},
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(onPressed: () {}, icon: Icons.search, text: 'Search'),
                GButton(onPressed: () {}, icon: Icons.card_travel, text: 'cart'),
                GButton(onPressed: () {}, icon: Icons.person, text: 'Person'),
              ]),
        ),
    );
  }
}
