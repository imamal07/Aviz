import 'package:aviz/presentation/widgets/aviz_logo.dart';
import 'package:aviz/presentation/widgets/elevated_button.dart';
import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/size_of_screen.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int activeIndex = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            30.0.toVerticalSpace(),
            Expanded(
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (value) {
                  setState(() {
                    activeIndex = value;
                  });
                },
                itemCount: 3,
                itemBuilder: (context, index) => Column(
                  children: [
                    Container(
                      width: context.screenWidth(),
                      height: context.screenHeight() * .4,
                      decoration: const BoxDecoration(
                        // color: Colors.red,
                        image: DecorationImage(
                          image: AssetImage(
                            MyImagesPath.onboardingBackground,
                          ),
                        ),
                      ),
                      child: Image.asset(
                        MyImagesPath.onboarding1,
                      ),
                    ),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          'اینجا محل'
                              .toText(size: 16, fontWeight: FontWeight.bold),
                          const AvizLogoGenerated()
                              .toSymmetricPadding(horizontal: 10),
                          'آگهی شماست'
                              .toText(size: 16, fontWeight: FontWeight.bold),
                        ],
                      ),
                    ),
                    20.0.toVerticalSpace(),
                    SizedBox(
                      width: context.screenWidth() * .8,
                      child:
                          'در آویز ملک خود را برای فروش،اجاره و رهن آگهی کنید و یا اگر دنبال ملک با مشخصات دلخواه خود هستید آویز ها را ببینید'
                              .toText(
                        color: MyColors.grey,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 7,
              child: ListView.builder(
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Container(
                  width: isActiveIndex(index) ? 16 : 6,
                  height: 6,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    borderRadius:
                        isActiveIndex(index) ? BorderRadius.circular(8) : null,
                    shape: isActiveIndex(index)
                        ? BoxShape.rectangle
                        : BoxShape.circle,
                    color: isActiveIndex(index)
                        ? MyColors.red
                        : MyColors.lightGrey,
                  ),
                ),
              ),
            ),
            25.0.toVerticalSpace(),
            Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: GenerateElevatedButton(
                      backgrounColor: Colors.white,
                      child: 'ورود'.toText(
                        color: MyColors.red,
                        size: 16,
                      ),
                    ),
                  ),
                ),
                25.0.toHorizontalSpace(),
                Expanded(
                  child: SizedBox(
                    height: 40,
                    child: GenerateElevatedButton(
                      child: 'ثبت نام'.toText(
                        color: Colors.white,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ).toSymmetricPadding(horizontal: 16, vertical: 10),
          ],
        ),
      ),
    );
  }

  bool isActiveIndex(int index) {
    return (activeIndex == index);
  }
}
