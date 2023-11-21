import 'package:aviz/presentation/widgets/aviz_logo.dart';
import 'package:aviz/presentation/widgets/container_button.dart';
import 'package:aviz/presentation/widgets/elevated_button.dart';
import 'package:aviz/presentation/widgets/normal_textfield.dart';
import 'package:aviz/presentation/widgets/title_with_icon.dart';
import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController searchInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              'من'.toText(color: MyColors.red, size: 16),
              const AvizLogoGenerated(backgroundColor: Colors.white),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              32.0.toVerticalSpace(),
              GenerateNormalTextField(
                controller: searchInputController,
                hintText: '...جستجو',
                onchanged: (value) {
                  setState(() {});
                },
                keyboardType: TextInputType.text,
                suffixIcon: Image.asset(
                  MyImagesPath.searchIcon,
                  color: MyColors.grey,
                ),
                defaultFillColor: Colors.white,
              ),
              32.0.toVerticalSpace(),
              const GenerateTitleWithIcon(
                  title: 'حساب کاربری',
                  iconPath: MyImagesPath.profileProfileIcon),
              24.0.toVerticalSpace(),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: MyColors.lightGrey1,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(MyImagesPath.profileEditIcon),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        'محمد ابولی زاده'.toText(),
                        16.0.toVerticalSpace(),
                        Row(
                          children: [
                            SizedBox(
                              height: 26,
                              width: 75,
                              child: GenerateElevatedButton(
                                child: 'تایید شده'
                                    .toText(size: 12, color: Colors.white),
                                onPressed: () {},
                              ),
                            ),
                            8.0.toHorizontalSpace(),
                            '۰۹۱۱۷۵۴۰۱۴۵'.toText(),
                          ],
                        ),
                      ],
                    ),
                    16.0.toHorizontalSpace(),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(22),
                      child: Image.asset(
                        MyImagesPath.profilePic,
                        width: 56,
                        height: 56,
                      ),
                    ),
                  ],
                ),
              ),
              32.0.toVerticalSpace(),
              const Divider(),
              32.0.toVerticalSpace(),
              GenerateContainerButton(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset(
                      MyImagesPath.leftArrow,
                      color: MyColors.lightGrey,
                    ),
                    const Spacer(),
                    'آگهی های من'.toText(size: 16),
                    12.0.toHorizontalSpace(),
                    Image.asset(
                      MyImagesPath.profileNoteIcon,
                    ),
                  ],
                ),
              ),
              16.0.toVerticalSpace(),
              GenerateContainerButton(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset(
                      MyImagesPath.leftArrow,
                      color: MyColors.lightGrey,
                    ),
                    const Spacer(),
                    'پرداخت های من'.toText(size: 16),
                    12.0.toHorizontalSpace(),
                    Image.asset(
                      MyImagesPath.profileCardIcon,
                    ),
                  ],
                ),
              ),
              16.0.toVerticalSpace(),
              GenerateContainerButton(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset(
                      MyImagesPath.leftArrow,
                      color: MyColors.lightGrey,
                    ),
                    const Spacer(),
                    'بازدید های اخیر'.toText(size: 16),
                    12.0.toHorizontalSpace(),
                    Image.asset(
                      MyImagesPath.profileEyeIcon,
                    ),
                  ],
                ),
              ),
              16.0.toVerticalSpace(),
              GenerateContainerButton(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset(
                      MyImagesPath.leftArrow,
                      color: MyColors.lightGrey,
                    ),
                    const Spacer(),
                    'ذخیره شده ها'.toText(size: 16),
                    12.0.toHorizontalSpace(),
                    Image.asset(
                      MyImagesPath.profileSaveIcon,
                    ),
                  ],
                ),
              ),
              16.0.toVerticalSpace(),
              GenerateContainerButton(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset(
                      MyImagesPath.leftArrow,
                      color: MyColors.lightGrey,
                    ),
                    const Spacer(),
                    'تنظیمات'.toText(size: 16),
                    12.0.toHorizontalSpace(),
                    Image.asset(
                      MyImagesPath.profileSettingIcon,
                    ),
                  ],
                ),
              ),
              16.0.toVerticalSpace(),
              GenerateContainerButton(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset(
                      MyImagesPath.leftArrow,
                      color: MyColors.lightGrey,
                    ),
                    const Spacer(),
                    'پشتیبانی و قوانین'.toText(size: 16),
                    12.0.toHorizontalSpace(),
                    Image.asset(
                      MyImagesPath.profileMessageQuestionIcon,
                    ),
                  ],
                ),
              ),
              16.0.toVerticalSpace(),
              GenerateContainerButton(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset(
                      MyImagesPath.leftArrow,
                      color: MyColors.lightGrey,
                    ),
                    const Spacer(),
                    'درباره آویز'.toText(size: 16),
                    12.0.toHorizontalSpace(),
                    Image.asset(
                      MyImagesPath.profileInfoIcon,
                    ),
                  ],
                ),
              ),
              32.0.toVerticalSpace(),
              Column(
                children: [
                  'نسخه'.toText(
                    color: MyColors.lightGrey,
                  ),
                  '۱.۵.۹'.toText(
                    color: MyColors.lightGrey,
                  ),
                ],
              ),

              32.0.toVerticalSpace(), //bottom padding
            ],
          ).toSymmetricPadding(horizontal: 15),
        ),
      ),
    );
  }
}
