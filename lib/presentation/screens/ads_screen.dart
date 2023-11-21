import 'package:aviz/presentation/widgets/aviz_logo.dart';
import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/size_of_screen.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

import 'ad_detail_screen.dart';

class AdsScreen extends StatelessWidget {
  const AdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const AvizLogoGenerated(backgroundColor: Colors.white),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'مشاهده همه'.toText(
                    color: MyColors.lightGrey,
                  ),
                  'آویز های داغ'.toText(
                    fontWeight: FontWeight.w700,
                    size: 16,
                  ),
                ],
              ).toSymmetricPadding(horizontal: 15),
              SizedBox(
                height: context.screenHeight() * .36,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView.builder(
                    // padding:
                    //     EdgeInsets.only(bottom: context.screenHeight() * .04),
                    scrollDirection: Axis.horizontal,
                    itemCount: MyTestList.hotAdsList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AdDetailScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 16),
                                width: context.screenWidth() * .6,
                                height: context.screenHeight() * .31,
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(4),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(.16),
                                      blurRadius: 30,
                                      offset: const Offset(0, 10),
                                    ),
                                    const BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 10,
                                      offset: Offset(0, -20),
                                    ),
                                    const BoxShadow(
                                      color: Colors.white,
                                      blurRadius: 30,
                                      offset: Offset(0, -30),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(2),
                                      child: Image.asset(
                                        MyTestList.hotAdsList[index]
                                            ['imagePath']!,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    16.0.toVerticalSpace(),
                                    MyTestList.hotAdsList[index]['title']!
                                        .toText(),
                                    8.0.toVerticalSpace(),
                                    MyTestList.hotAdsList[index]['description']!
                                        .toText(
                                      size: 12,
                                      color: MyColors.lightGrey,
                                    ),
                                    16.0.toVerticalSpace(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        'قیمت:'.toText(
                                          size: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        MyTestList.hotAdsList[index]['price']!
                                            .toText(
                                          color: MyColors.red,
                                          size: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          (context.screenHeight() * .04).toVerticalSpace(),
                        ],
                      );
                    },
                    // separatorBuilder: (BuildContext context, int index) {
                    //   return 16.0.toHorizontalSpace();
                    // },
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  'مشاهده همه'.toText(
                    color: MyColors.lightGrey,
                  ),
                  'آویز های اخیر'.toText(
                    fontWeight: FontWeight.w700,
                    size: 16,
                  ),
                ],
              ).toSymmetricPadding(horizontal: 15),
              24.0.toVerticalSpace(),
              ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: MyTestList.recentAdsList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const AdDetailScreen(),
                        ),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      margin: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(.2),
                            blurRadius: 10,
                            offset: const Offset(0, 2),
                          ),
                          BoxShadow(
                            color: Colors.white.withOpacity(.4),
                            blurRadius: 5,
                            offset: const Offset(0, -5),
                          ),
                          const BoxShadow(
                            color: Colors.white,
                            blurRadius: 10,
                            offset: Offset(0, -5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(4),
                              child: Image.asset(
                                MyTestList.recentAdsList[index]['imagePath']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          16.0.toHorizontalSpace(),
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                MyTestList.recentAdsList[index]['title']!
                                    .toText(),
                                8.0.toVerticalSpace(),
                                MyTestList.recentAdsList[index]['description']!
                                    .toText(
                                  size: 12,
                                  color: MyColors.lightGrey,
                                ),
                                16.0.toVerticalSpace(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    MyTestList.recentAdsList[index]['price']!
                                        .toText(
                                      color: MyColors.red,
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    'قیمت:'.toText(
                                      size: 12,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return 16.0.toVerticalSpace();
                },
              ),
              32.0.toVerticalSpace(),
            ],
          ).toOnlyPadding(top: 15),
        ),
      ),
    );
  }
}
