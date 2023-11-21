import 'package:aviz/presentation/screens/fourth_step_add_ad_screen.dart';
import 'package:aviz/presentation/widgets/add_ad_screen_appbar.dart';
import 'package:aviz/presentation/widgets/elevated_button.dart';
import 'package:aviz/presentation/widgets/switch_with_title.dart';
import 'package:aviz/presentation/widgets/third_step_property_textfield.dart';
import 'package:aviz/presentation/widgets/title_with_icon.dart';
import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/size_of_screen.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

class ThirdStepAddAdScreen extends StatefulWidget {
  const ThirdStepAddAdScreen({super.key});

  @override
  State<ThirdStepAddAdScreen> createState() => _ThirdStepAddAdScreenState();
}

class _ThirdStepAddAdScreenState extends State<ThirdStepAddAdScreen> {
  final TextEditingController roomInputController = TextEditingController();
  final TextEditingController meterageInputController = TextEditingController();
  final TextEditingController floorInputController = TextEditingController();
  final TextEditingController constructionInputController =
      TextEditingController();
  bool hasElevator = false;
  bool hasParking = false;
  bool hasStoreRoom = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: GenerateAddAdScreenAppBar(title: 'ثبت'.toText(size: 16)),
        body: SafeArea(
          child: SizedBox(
            width: context.screenWidth(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: context.screenWidth() * .6,
                  height: 4,
                  color: MyColors.red,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        20.0.toVerticalSpace(),
                        const GenerateTitleWithIcon(
                            title: 'انتخاب دسته بندی آویز',
                            iconPath: MyImagesPath.categoryIcon),
                        32.0.toVerticalSpace(),
                        Column(
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    child: 'محدوده ملک'
                                        .toText(color: MyColors.grey)),
                                25.0.toHorizontalSpace(),
                                Expanded(
                                    child: 'دسته بندی'
                                        .toText(color: MyColors.grey)),
                              ],
                            ),
                            16.0.toVerticalSpace(),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    height: 48,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: MyColors.lightGrey1,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: 'خیابان صیاد شیرازی'.toText(
                                        color: MyColors.grey,
                                        size: 16,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                ),
                                25.0.toHorizontalSpace(),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.all(12),
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: MyColors.lightGrey1),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Row(
                                      children: [
                                        Image.asset(MyImagesPath.downArrowIcon),
                                        Expanded(
                                          child: 'فروش آپارتمان'.toText(
                                            size: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        32.0.toVerticalSpace(),
                        const Divider(),
                        32.0.toVerticalSpace(),
                        const GenerateTitleWithIcon(
                            title: 'ویژگی ها',
                            iconPath: MyImagesPath.propertiesIcon),
                        32.0.toVerticalSpace(),
                        Row(
                          children: [
                            Expanded(
                              child: GeneratePropertyTextField(
                                title: 'تعداد اتاق',
                                hint: '3',
                                controller: roomInputController,
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ),
                            25.0.toHorizontalSpace(),
                            Expanded(
                              child: GeneratePropertyTextField(
                                title: 'متراژ',
                                hint: "220",
                                controller: meterageInputController,
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ),
                          ],
                        ),
                        24.0.toVerticalSpace(),
                        Row(
                          children: [
                            Expanded(
                              child: GeneratePropertyTextField(
                                title: 'سال ساخت',
                                hint: '1391',
                                controller: constructionInputController,
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ),
                            25.0.toHorizontalSpace(),
                            Expanded(
                              child: GeneratePropertyTextField(
                                title: 'طبقه',
                                hint: "4",
                                controller: floorInputController,
                                onChanged: (value) {
                                  setState(() {});
                                },
                              ),
                            ),
                          ],
                        ),
                        32.0.toVerticalSpace(),
                        const Divider(),
                        32.0.toVerticalSpace(),
                        const GenerateTitleWithIcon(
                            title: 'امکانات',
                            iconPath: MyImagesPath.magicPenIcon),
                        24.0.toVerticalSpace(),
                        GenerateSwitch(
                          value: hasElevator,
                          title: 'آسانسور',
                          onTap: () {
                            setState(() {
                              hasElevator = !hasElevator;
                            });
                          },
                        ),
                        26.0.toVerticalSpace(),
                        GenerateSwitch(
                          value: hasParking,
                          title: 'پارکینگ',
                          onTap: () {
                            setState(() {
                              hasParking = !hasParking;
                            });
                          },
                        ),
                        26.0.toVerticalSpace(),
                        GenerateSwitch(
                          value: hasStoreRoom,
                          title: 'انباری',
                          onTap: () {
                            setState(() {
                              hasStoreRoom = !hasStoreRoom;
                            });
                          },
                        ),
                        35.0.toVerticalSpace(),
                        SizedBox(
                          width: context.screenWidth(),
                          height: 48,
                          child: GenerateElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const FourthStepAddAdScreen(),
                                ),
                              );
                            },
                            child: 'بعدی'.toText(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        20.0.toVerticalSpace(),
                      ],
                    ),
                  ).toSymmetricPadding(horizontal: 15),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




// old property section widget
  // Column(
  //     children: [
  //   Row(
  //     children: [
  //       Expanded(
  //           child: 'تعداد اتاق'
  //               .toText(color: MyColors.grey)),
  //       25.0.toHorizontalSpace(),
  //       Expanded(
  //           child: 'متراژ'.toText(color: MyColors.grey)),
  //     ],
  //   ),
  //   16.0.toVerticalSpace(),
  //   Row(
  //     children: [
  //       Expanded(
  //         child: Container(
  //           padding: const EdgeInsets.all(12),
  //           decoration: BoxDecoration(
  //             color: MyColors.lightGrey1,
  //             borderRadius: BorderRadius.circular(4),
  //           ),
  //           child: IntrinsicHeight(
  //             child: Row(
  //               children: [
  //                 Column(
  //                   mainAxisAlignment:
  //                       MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     Image.asset(
  //                         MyImagesPath.upTriangleIcon),
  //                     Image.asset(
  //                         MyImagesPath.downTriangleIcon),
  //                   ],
  //                 ),
  //                 Expanded(
  //                   child: SizedBox(
  //                     height: 25,
  //                     child: GenerateNormalTextField(
  //                       controller:
  //                           TextEditingController(),
  //                       hintText: '3',
  //                       onchanged: (value) {},
  //                       keyboardType:
  //                           TextInputType.number,
  //                       horizontalContentPadding: 0,
  //                     ),
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //       25.0.toHorizontalSpace(),
  //       Expanded(
  //         child: Container(
  //           padding: const EdgeInsets.all(12),
  //           decoration: BoxDecoration(
  //             color: MyColors.lightGrey1,
  //             borderRadius: BorderRadius.circular(4),
  //           ),
  //           child: IntrinsicHeight(
  //             child: Row(
  //               children: [
  //                 Column(
  //                   mainAxisAlignment:
  //                       MainAxisAlignment.spaceBetween,
  //                   children: [
  //                     Image.asset(
  //                         MyImagesPath.upTriangleIcon),
  //                     Image.asset(
  //                         MyImagesPath.downTriangleIcon),
  //                   ],
  //                 ),
  //                 Expanded(
  //                   child: SizedBox(
  //                     height: 25,
  //                     child: GenerateNormalTextField(
  //                       controller:
  //                           TextEditingController(),
  //                       hintText: '170',
  //                       onchanged: (value) {},
  //                       keyboardType:
  //                           TextInputType.number,
  //                       horizontalContentPadding: 0,
  //                     ),
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         ),
  //       ),
  //     ],
  //   ),
  //     ],
  //   ),