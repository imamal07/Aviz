import 'package:aviz/presentation/widgets/aviz_logo.dart';
import 'package:aviz/presentation/widgets/elevated_button.dart';
import 'package:aviz/presentation/widgets/normal_textfield.dart';
import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/size_of_screen.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController fullNameInputController = TextEditingController();
  TextEditingController phoneInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const AvizLogoGenerated(),
                  8.0.toHorizontalSpace(),
                  'خوش اومدی به'.toText(size: 16, fontWeight: FontWeight.w700)
                ],
              ),
              16.0.toVerticalSpace(),
              'این فوق العادست که آویزو برای آگهی هات انتخاب کردی!'.toText(
                color: MyColors.grey,
              ),
              32.0.toVerticalSpace(),
              SizedBox(
                height: 50,
                child: GenerateNormalTextField(
                  controller: fullNameInputController,
                  hintText: 'نام و نام خانوادگی',
                  onchanged: (value) {
                    setState(() {});
                  },
                  keyboardType: TextInputType.name,
                ),
              ),
              24.0.toVerticalSpace(),
              SizedBox(
                height: 50,
                child: GenerateNormalTextField(
                  controller: phoneInputController,
                  hintText: 'شماره موبایل',
                  onchanged: (value) {
                    setState(() {});
                  },
                  keyboardType: TextInputType.phone,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 48,
                child: GenerateElevatedButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(MyImagesPath.leftArrow),
                      12.0.toHorizontalSpace(),
                      'مرحله بعد'.toText(
                        size: 16,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
              16.0.toVerticalSpace(),
              SizedBox(
                width: context.screenWidth(),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: 'قبلا ثبت نام کردی؟ ',
                    style: TextStyle(
                        fontFamily: 'Sh',
                        color: MyColors.lightGrey,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: 'ورود',
                        style: TextStyle(
                          fontFamily: 'Sh',
                          fontSize: 14,
                          color: MyColors.red,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ).toSymmetricPadding(vertical: 20, horizontal: 15),
        ),
      ),
    );
  }
}
