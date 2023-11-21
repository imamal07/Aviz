import 'package:aviz/presentation/screens/add_ad_screen.dart';
import 'package:aviz/presentation/screens/ads_screen.dart';
import 'package:aviz/presentation/screens/login_screen.dart';
import 'package:aviz/presentation/screens/onboarding_screen.dart';
import 'package:aviz/presentation/screens/profile_screen.dart';
import 'package:aviz/presentation/screens/signup_screen.dart';
import 'package:aviz/presentation/screens/verification_phone_login_screen.dart';
import 'package:aviz/presentation/screens/verification_phone_signup_screen.dart';
import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:flutter/material.dart';

class Startup extends StatefulWidget {
  const Startup({super.key});

  @override
  State<Startup> createState() => _StartupState();
}

class _StartupState extends State<Startup> {
  int selectedIndex = 3;
  List navBarScreensList = const [
    ProfileScreen(),
    AddAdScreen(),
    AdsScreen(),
    AdsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Sh',
      ),
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xffF9FAFB),
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: true,
          showSelectedLabels: true,
          selectedItemColor: MyColors.red,
          unselectedItemColor: MyColors.grey,
          currentIndex: selectedIndex,
          onTap: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(MyImagesPath.profileIcon,
                      color:
                          (selectedIndex == 0) ? MyColors.red : MyColors.grey)
                  .toOnlyPadding(bottom: 2),
              label: 'آویز من',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(MyImagesPath.addIcon,
                      color:
                          (selectedIndex == 1) ? MyColors.red : MyColors.grey)
                  .toOnlyPadding(bottom: 2),
              label: 'افزودن آویز',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(MyImagesPath.searchIcon,
                      color:
                          (selectedIndex == 2) ? MyColors.red : MyColors.grey)
                  .toOnlyPadding(bottom: 2),
              label: 'جستجو',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(MyImagesPath.avizLogoIcon,
                      color: (selectedIndex == 3) ? null : MyColors.grey)
                  .toOnlyPadding(bottom: 2),
              label: 'آویز آگهی ها',
            ),
          ],
        ).toOnlyPadding(bottom: 8),
        body: navBarScreensList[selectedIndex],
      ),
    );
  }
}
