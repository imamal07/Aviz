import 'package:aviz/presentation/screens/ad_detail_screen.dart';
import 'package:aviz/presentation/widgets/elevated_button.dart';
import 'package:aviz/presentation/widgets/normal_textfield.dart';
import 'package:aviz/presentation/widgets/switch_with_title.dart';
import 'package:aviz/presentation/widgets/title_with_icon.dart';
import 'package:aviz/utils/extensions/size_of_screen.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../widgets/add_ad_screen_appbar.dart';

class FifthStepAddAdScreen extends StatefulWidget {
  const FifthStepAddAdScreen({super.key});

  @override
  State<FifthStepAddAdScreen> createState() => _FifthStepAddAdScreenState();
}

class _FifthStepAddAdScreenState extends State<FifthStepAddAdScreen> {
  TextEditingController titleInputController = TextEditingController();
  TextEditingController descriptionInputController = TextEditingController();
  bool isActiveMessage = true;
  bool isActiveCall = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: GenerateAddAdScreenAppBar(
            title: 'دسته بندی'.toText(color: MyColors.red, size: 16)),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: context.screenWidth(),
                height: 4,
                color: MyColors.red,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      32.0.toVerticalSpace(),
                      const GenerateTitleWithIcon(
                          title: 'تصویر آویز',
                          iconPath: MyImagesPath.cameraIcon),
                      24.0.toVerticalSpace(),
                      DottedBorder(
                        dashPattern: const [7, 4],
                        borderType: BorderType.RRect,
                        color: MyColors.lightGrey,
                        radius: const Radius.circular(4),
                        child: Container(
                          height: context.screenHeight() * .25,
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              'لطفا تصویر آویز خود را بارگذاری کنید'
                                  .toText(color: MyColors.grey),
                              16.0.toVerticalSpace(),
                              SizedBox(
                                height: 48,
                                child: GenerateElevatedButton(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      'انتخاب تصویر'.toText(
                                          color: Colors.white, size: 16),
                                      12.0.toHorizontalSpace(),
                                      Image.asset(
                                          MyImagesPath.documentUploadIcon),
                                    ],
                                  ),
                                  onPressed: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      32.0.toVerticalSpace(),
                      const GenerateTitleWithIcon(
                          title: 'عنوان آویز', iconPath: MyImagesPath.penIcon),
                      24.0.toVerticalSpace(),
                      GenerateNormalTextField(
                        controller: titleInputController,
                        hintText: 'عنوان آویز را وارد کنید',
                        onchanged: (value) {
                          setState(() {});
                        },
                        keyboardType: TextInputType.text,
                      ),
                      32.0.toVerticalSpace(),
                      const GenerateTitleWithIcon(
                          title: 'توضیحات',
                          iconPath: MyImagesPath.clipboardTextIcon),
                      24.0.toVerticalSpace(),
                      GenerateNormalTextField(
                        controller: descriptionInputController,
                        hintText: '... توضیحات آویز را وارد کنید',
                        onchanged: (value) {
                          setState(() {});
                        },
                        keyboardType: TextInputType.multiline,
                        minLine: 4,
                        verticalContentPadding: 10,
                      ),
                      32.0.toVerticalSpace(),
                      GenerateSwitch(
                        value: isActiveMessage,
                        title: 'فعال کردن گفتگو',
                        onTap: () {
                          setState(() {
                            isActiveMessage = !isActiveMessage;
                          });
                        },
                      ),
                      16.0.toVerticalSpace(),
                      GenerateSwitch(
                        value: isActiveCall,
                        title: 'فعال کردن تماس',
                        onTap: () {
                          setState(() {
                            isActiveCall = !isActiveCall;
                          });
                        },
                      ),
                      40.0.toVerticalSpace(),
                      SizedBox(
                        width: context.screenWidth(),
                        height: 48,
                        child: GenerateElevatedButton(
                          child:
                              'ثبت آگهی'.toText(color: Colors.white, size: 16),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AdDetailScreen(),
                            ));
                          },
                        ),
                      ),
                      20.0.toVerticalSpace(),
                    ],
                  ).toSymmetricPadding(horizontal: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
