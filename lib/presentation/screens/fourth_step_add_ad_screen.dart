import 'package:aviz/presentation/widgets/add_ad_screen_appbar.dart';
import 'package:aviz/presentation/widgets/elevated_button.dart';
import 'package:aviz/presentation/widgets/switch_with_title.dart';
import 'package:aviz/presentation/widgets/title_with_icon.dart';
import 'package:aviz/utils/extensions/size_of_screen.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class FourthStepAddAdScreen extends StatefulWidget {
  const FourthStepAddAdScreen({super.key});

  @override
  State<FourthStepAddAdScreen> createState() => _FourthStepAddAdScreenState();
}

class _FourthStepAddAdScreenState extends State<FourthStepAddAdScreen> {
  bool showLocationAccurate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GenerateAddAdScreenAppBar(
          title: 'دسته بندی'.toText(color: MyColors.red, size: 16)),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              width: context.screenWidth() * .8,
              height: 4,
              color: MyColors.red,
            ),
            32.0.toVerticalSpace(),
            const GenerateTitleWithIcon(
                title: 'موقعیت مکانی', iconPath: MyImagesPath.mapIcon),
            16.0.toVerticalSpace(),
            'بعد انتخاب محل دقیق روی نقشه میتوانید نمایش آن را فعال یا غیر فعال کید تا حریم خصوصی شما خفظ شود.'
                .toText(color: MyColors.grey),
            32.0.toVerticalSpace(),
            Container(
              height: context.screenHeight() * .2,
              width: context.screenWidth(),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
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
                            color: Colors.white,
                            overflow: TextOverflow.ellipsis),
                      ),
                    ],
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            32.0.toVerticalSpace(),
            GenerateSwitch(
              value: showLocationAccurate,
              title: 'موقعیت دقیق نقشه نمایش داده شود؟',
              onTap: () {
                setState(() {
                  showLocationAccurate = !showLocationAccurate;
                });
              },
            ),
            const Spacer(),
            SizedBox(
              width: context.screenWidth(),
              height: 50,
              child: GenerateElevatedButton(
                child: 'بعدی'.toText(
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            )
          ],
        ).toSymmetricPadding(vertical: 20, horizontal: 15),
      ),
    );
  }
}
