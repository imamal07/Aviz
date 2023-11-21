import 'package:aviz/utils/extensions/to_padding.dart';
import 'package:aviz/utils/extensions/to_text.dart';
import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import '../widgets/normal_textfield.dart';
import 'ad_detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
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
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(MyImagesPath.avizLogoText),
              'جستجوی'.toText(size: 16, color: MyColors.red),
            ],
          ),
        ),
        body: SafeArea(
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
              24.0.toVerticalSpace(),
              Expanded(
                child: ListView.separated(
                  itemCount: MyTestList.recentAdsList.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const AdDetailScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(.2),
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                            BoxShadow(
                              color: Colors.white.withOpacity(.4),
                              blurRadius: 5,
                              offset: const Offset(0, -5),
                            ),
                            const BoxShadow(
                              color: Colors.white,
                              blurRadius: 10,
                              offset: Offset(0, -5),
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
                                  MyTestList.recentAdsList[index]
                                          ['description']!
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
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return 16.0.toVerticalSpace();
                  },
                ),
              ),
            ],
          ).toSymmetricPadding(horizontal: 15),
        ),
      ),
    );
  }
}
