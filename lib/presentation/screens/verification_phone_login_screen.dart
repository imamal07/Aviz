import 'package:aviz/presentation/widgets/elevated_button.dart';
import 'package:aviz/presentation/widgets/one_digit_textfield.dart';
import 'package:aviz/startup.dart';
import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/size_of_screen.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

class VerificationPhoneLoginScreen extends StatefulWidget {
  const VerificationPhoneLoginScreen({super.key});

  @override
  State<VerificationPhoneLoginScreen> createState() =>
      _VerificationPhoneLoginScreenState();
}

class _VerificationPhoneLoginScreenState
    extends State<VerificationPhoneLoginScreen> {
  TextEditingController firstDigitInputController = TextEditingController();
  TextEditingController secondDigitInputController = TextEditingController();
  TextEditingController thirdDigitInputController = TextEditingController();
  TextEditingController fourthDigitInputController = TextEditingController();

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
              'تایید شماره موبایل'.toText(
                size: 16,
                fontWeight: FontWeight.w700,
              ),
              16.0.toVerticalSpace(),
              'کد ورود پیامک شده را وارد کنید'.toText(
                size: 14,
                color: MyColors.grey,
              ),
              32.0.toVerticalSpace(),
              Row(
                children: [
                  Flexible(
                    child: GenerateOneDigitTextField(
                      controller: firstDigitInputController,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        setState(() {});
                      },
                    ),
                  ),
                  16.0.toHorizontalSpace(),
                  Flexible(
                    child: GenerateOneDigitTextField(
                      controller: secondDigitInputController,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        setState(() {});
                      },
                    ),
                  ),
                  16.0.toHorizontalSpace(),
                  Flexible(
                    child: GenerateOneDigitTextField(
                      controller: thirdDigitInputController,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        setState(() {});
                      },
                    ),
                  ),
                  16.0.toHorizontalSpace(),
                  Flexible(
                    child: GenerateOneDigitTextField(
                      controller: fourthDigitInputController,
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nextFocus();
                        }
                        setState(() {});
                      },
                    ),
                  ),
                ],
              ),
              32.0.toVerticalSpace(),
              SizedBox(
                width: context.screenWidth(),
                child: RichText(
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: '00:45 ',
                    style: TextStyle(
                      fontFamily: 'Sh',
                      fontSize: 18,
                      color: MyColors.darkGrey,
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: 'ارسال مجدد کد',
                        style: TextStyle(
                          fontFamily: 'Sh',
                          fontSize: 14,
                          color: MyColors.lightGrey,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: context.screenWidth(),
                height: 50,
                child: GenerateElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const MainScreen(),
                    ));
                  },
                  child: 'تایید ورود'.toText(
                    color: Colors.white,
                    size: 16,
                    fontWeight: FontWeight.w500,
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
