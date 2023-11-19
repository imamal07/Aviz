import 'package:aviz/presentation/widgets/aviz_logo.dart';
import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/size_of_screen.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

class AdsScreen extends StatelessWidget {
  const AdsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const AvizLogoGenerated(backgroundColor: Colors.white),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
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
              height: context.screenHeight() * .35,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: MyTestList.hotAdsList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          width: context.screenWidth() * .6,
                          height: context.screenHeight() * .31,
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              const BoxShadow(
                                color: Colors.white,
                                blurRadius: 5,
                                offset: Offset(0, 20),
                              ),
                              const BoxShadow(
                                color: Colors.white,
                                blurRadius: 5,
                                offset: Offset(0, 20),
                              ),
                              BoxShadow(
                                color: Colors.grey.withOpacity(.05),
                                blurRadius: 15,
                                offset: const Offset(0, 30),
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(2),
                                child: Image.asset(
                                  MyTestList.hotAdsList[index]['imagePath']!,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              16.0.toVerticalSpace(),
                              MyTestList.hotAdsList[index]['title']!.toText(),
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
                                  MyTestList.hotAdsList[index]['price']!.toText(
                                    color: MyColors.red,
                                    size: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return 16.0.toHorizontalSpace();
                  },
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
            Expanded(
              child: ListView.separated(
                itemCount: MyTestList.recentAdsList.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        const BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                        const BoxShadow(
                          color: Colors.white,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        ),
                        BoxShadow(
                          color: Colors.grey.withOpacity(.05),
                          blurRadius: 15,
                          offset: const Offset(0, 10),
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
                  );
                },
                separatorBuilder: (context, index) {
                  return 16.0.toVerticalSpace();
                },
              ),
            ),
          ],
        ).toOnlyPadding(top: 15),
      ),
    );
  }
}
