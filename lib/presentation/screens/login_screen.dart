import 'package:aviz/presentation/screens/signup_screen.dart';
import 'package:aviz/presentation/screens/verification_phone_login_screen.dart';
import 'package:aviz/presentation/widgets/aviz_logo.dart';
import 'package:aviz/presentation/widgets/elevated_button.dart';
import 'package:aviz/presentation/widgets/normal_textfield.dart';
import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/size_of_screen.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  'ورود به'.toText(
                    size: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ],
              ),
              16.0.toVerticalSpace(),
              'خوشحالیم که مجددا آویز رو برای آگهی انتخاب کردی!'.toText(
                color: MyColors.grey,
              ),
              32.0.toVerticalSpace(),
              SizedBox(
                height: 50,
                child: GenerateNormalTextField(
                  controller: phoneInputController,
                  hintText: 'شماره موبایل',
                  onchanged: (value) {
                    setState(() {});
                  },
                  keyboardType: TextInputType.phone,
                  changeFillColor: true,
                ),
              ),
              const Spacer(),
              SizedBox(
                height: 48,
                child: GenerateElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          const VerificationPhoneLoginScreen(),
                    ));
                  },
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
                  text: TextSpan(
                    text: 'تاحالا ثبت نام نکردی؟ ',
                    style: const TextStyle(
                        fontFamily: 'Sh',
                        color: MyColors.lightGrey,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignupScreen(),
                            ));
                          },
                        text: 'ثبت نام',
                        style: const TextStyle(
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
