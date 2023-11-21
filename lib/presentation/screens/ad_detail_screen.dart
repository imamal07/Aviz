import 'package:aviz/presentation/widgets/container_button.dart';
import 'package:aviz/presentation/widgets/elevated_button.dart';
import 'package:aviz/presentation/widgets/title_with_icon.dart';
import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/size_of_screen.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

class AdDetailScreen extends StatefulWidget {
  const AdDetailScreen({super.key});

  @override
  State<AdDetailScreen> createState() => _AdDetailScreenState();
}

class _AdDetailScreenState extends State<AdDetailScreen> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leadingWidth: context.screenWidth() * .35,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            16.0.toHorizontalSpace(),
            Image.asset(MyImagesPath.archiveIcon),
            Image.asset(MyImagesPath.shareIcon),
            Image.asset(MyImagesPath.informationIcon),
          ],
        ),
        actions: [
          Image.asset(MyImagesPath.rightArrow),
        ],
      ),
      body: SafeArea(
        child: SizedBox(
          height: context.screenHeight(),
          width: context.screenWidth(),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    32.0.toVerticalSpace(),
                    Container(
                      width: context.screenWidth(),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          MyImagesPath.adDetail1,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    36.0.toVerticalSpace(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        '۱۶ دقیقه پیش در گرگان'.toText(color: MyColors.grey),
                        Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: MyColors.lightGrey1,
                            ),
                            child: 'آپارتمان'.toText(color: MyColors.red)),
                      ],
                    ),
                    24.0.toVerticalSpace(),
                    'آپارتمان ۵۰۰ متری در صیاد شیرازی'
                        .toText(size: 16, fontWeight: FontWeight.w700),
                    32.0.toVerticalSpace(),
                    const Divider(),
                    32.0.toVerticalSpace(),
                    GenerateContainerButton(
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            MyImagesPath.leftArrow,
                            color: MyColors.lightGrey,
                          ),
                          'هشدار های قبل از معامله!'.toText(size: 16),
                        ],
                      ),
                    ),
                    32.0.toVerticalSpace(),
                    SizedBox(
                      height: 30,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          children: [
                            _tab(
                              title: 'مشخصات',
                              isActive: selectedTab == 0 ? true : false,
                              onTap: () {
                                setState(() {
                                  selectedTab = 0;
                                });
                              },
                            ),
                            16.0.toHorizontalSpace(),
                            _tab(
                                title: 'قیمت',
                                isActive: selectedTab == 1 ? true : false,
                                onTap: () {
                                  setState(() {
                                    selectedTab = 1;
                                  });
                                }),
                            16.0.toHorizontalSpace(),
                            _tab(
                                title: 'ویژگی ها و امکانات',
                                isActive: selectedTab == 2 ? true : false,
                                onTap: () {
                                  setState(() {
                                    selectedTab = 2;
                                  });
                                }),
                            16.0.toHorizontalSpace(),
                            _tab(
                                title: 'توضیحات',
                                isActive: selectedTab == 3 ? true : false,
                                onTap: () {
                                  setState(() {
                                    selectedTab = 3;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    32.0.toVerticalSpace(),
                    _getTabContent(index: selectedTab),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                width: context.screenWidth() - 30,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 48,
                          child: GenerateElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                'اطلاعات تماس'.toText(color: Colors.white),
                                10.0.toHorizontalSpace(),
                                Image.asset(MyImagesPath.callIcon),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      25.0.toHorizontalSpace(),
                      Expanded(
                        child: SizedBox(
                          height: 48,
                          child: GenerateElevatedButton(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                'گفتگو'.toText(color: Colors.white),
                                Image.asset(MyImagesPath.messageIcon),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ).toSymmetricPadding(horizontal: 15),
      ),
    );
  }

  Widget _tab(
      {required String title,
      required bool isActive,
      required Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        decoration: BoxDecoration(
          color: isActive ? MyColors.red : MyColors.lightGrey1,
          borderRadius: BorderRadius.circular(4),
        ),
        child: title.toText(color: isActive ? Colors.white : MyColors.red),
      ),
    );
  }

  Widget _getTabContent({required int index}) {
    List<Widget> tabsContentsList = [
      Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 24),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(color: MyColors.lightGrey1)),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      'ساخت'.toText(color: MyColors.grey),
                      6.0.toVerticalSpace(),
                      '1402'.toText(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                  child: CustomPaint(
                    painter: VerticalDashedLinePainter(),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      'طبقه'.toText(color: MyColors.grey),
                      6.0.toVerticalSpace(),
                      'دوبلکس'.toText(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                  child: CustomPaint(
                    painter: VerticalDashedLinePainter(),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      'اتاق'.toText(color: MyColors.grey),
                      6.0.toVerticalSpace(),
                      '6'.toText(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 48,
                  child: CustomPaint(
                    painter: VerticalDashedLinePainter(),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      'متراژ'.toText(color: MyColors.grey),
                      6.0.toVerticalSpace(),
                      '500'.toText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          32.0.toVerticalSpace(),
          const GenerateTitleWithIcon(
              title: 'موقعیت مکانی', iconPath: MyImagesPath.mapIcon),
          24.0.toVerticalSpace(),
          Container(
            height: context.screenHeight() * .2,
            width: context.screenWidth(),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    MyColors.red.withOpacity(.4), BlendMode.color),
                fit: BoxFit.cover,
                image: const AssetImage(
                  MyImagesPath.map,
                ),
              ),
            ),
            alignment: Alignment.center,
            child: SizedBox(
              width: context.screenWidth() * .45,
              height: 50,
              child: GenerateElevatedButton(
                child: Row(
                  children: [
                    Image.asset(MyImagesPath.locationIcon),
                    8.0.toHorizontalSpace(),
                    Expanded(
                      child: 'گرگان، صیاد شیرازی'.toText(
                          color: Colors.white, overflow: TextOverflow.ellipsis),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ),
          90.0.toVerticalSpace(),
        ],
      ),
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
            border: Border.all(
          color: MyColors.lightGrey1,
        )),
        child: const GenerateTabContentList(
            list: MyTestList.priceTabContentList, color: MyColors.darkGrey),
      ),
      Column(
        children: [
          const GenerateTitleWithIcon(
              title: 'ویژگی ها', iconPath: MyImagesPath.propertiesIcon),
          24.0.toVerticalSpace(),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColors.lightGrey1,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const GenerateTabContentList(
                list: MyTestList.featuresTabContentList, color: MyColors.grey),
          ),
          32.0.toVerticalSpace(),
          const GenerateTitleWithIcon(
              title: 'امکانات', iconPath: MyImagesPath.magicPenIcon),
          24.0.toVerticalSpace(),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              border: Border.all(
                color: MyColors.lightGrey1,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: const GenerateTabContentList(
                list: MyTestList.facilitiesTabContentList,
                color: MyColors.grey),
          ),
          80.0.toVerticalSpace(),
        ],
      ),
      'ویلا ۵۰۰ متری در خیابان صیاد شیرازی ویو عالی وسط جنگل قیمت فوق العاده  گذاشتم فروش فوری  خریدار باشی تخفیف پای معامله میدم.'
          .toText(
        color: MyColors.grey,
      ),
    ];

    return tabsContentsList[index];
  }
}

class GenerateTabContentList extends StatelessWidget {
  const GenerateTabContentList(
      {super.key, required this.list, this.fontSize = 16, required this.color});
  final List<Map<String, String>> list;
  final double fontSize;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              list[index]['value']!.toText(size: fontSize, color: color),
              list[index]['title']!.toText(size: fontSize, color: color),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            padding: const EdgeInsets.symmetric(vertical: 16),
            width: context.screenWidth(),
            child: CustomPaint(
              painter: HorizontalDashedLinePainter(),
            ),
          );
        },
        itemCount: list.length);
  }
}

class HorizontalDashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashWidth = 4, dashSpace = 2, startX = 0;
    final paint = Paint()
      ..color = MyColors.lightGrey1
      ..strokeWidth = 1;
    while (startX < size.width) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class VerticalDashedLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double dashHeight = 4, dashSpace = 2, startY = 0;
    final paint = Paint()
      ..color = MyColors.lightGrey1
      ..strokeWidth = 1;
    while (startY < size.height) {
      canvas.drawLine(Offset(0, startY), Offset(0, startY + dashHeight), paint);
      startY += dashHeight + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
