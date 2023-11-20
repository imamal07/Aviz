import 'package:aviz/presentation/screens/third_step_add_ad_screen.dart';
import 'package:aviz/presentation/widgets/add_ad_screen_appbar.dart';
import 'package:aviz/presentation/widgets/container_button.dart';
import 'package:aviz/utils/constants.dart';
import 'package:aviz/utils/extensions/size_of_screen.dart';
import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

class AddAdScreen extends StatefulWidget {
  const AddAdScreen({super.key});

  @override
  State<AddAdScreen> createState() => _AddAdScreenState();
}

class _AddAdScreenState extends State<AddAdScreen> {
  int step = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: GenerateAddAdScreenAppBar(
          title: 'دسته بندی'.toText(color: MyColors.red, size: 16)),
      body: SafeArea(
        child: SizedBox(
          width: context.screenWidth(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: context.screenWidth() * ((step == 1) ? .2 : .4),
                height: 4,
                color: MyColors.red,
              ),
              32.0.toVerticalSpace(),
              Expanded(
                child: ListView.separated(
                  itemCount: step == 1
                      ? MyTestList.firstStepOptionsList.length
                      : MyTestList.secondStepOptionsList.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return GenerateContainerButton(
                      onTap: () {
                        if (step < 2) {
                          setState(() {
                            step += 1;
                          });
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ThirdStepAddAdScreen(),
                          ));
                        }
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            MyImagesPath.leftArrow,
                            color: MyColors.red,
                          ),
                          (step == 1
                                  ? MyTestList.firstStepOptionsList
                                  : MyTestList.secondStepOptionsList)[index]
                              .toText(
                            size: 16,
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) => 16.0.toVerticalSpace(),
                ).toSymmetricPadding(horizontal: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
