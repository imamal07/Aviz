import 'package:flutter/material.dart';

class MyColors {
  static const Color darkPurple = Color(0xff4E08AA);
  static const Color red = Color(0xffE60023);
  static const Color darkGrey = Color(0xff101828);
  static const Color grey = Color(0xff98A2B3);
  static const Color lightGrey = Color(0xffD0D5DD);
  static const Color lightGrey1 = Color(0xffF2F4F7);
}

class MyImagesPath {
  static const String avizLogoIcon = 'assets/images/avizlogo_icon.png';
  static const String avizLogoText = 'assets/images/avizlogo_text.png';
  static const String onboarding1 = 'assets/images/onboarding_1.png';
  static const String onboardingBackground =
      'assets/images/onboarding_background.png';
  static const String leftArrow = 'assets/images/arrow-left.png';
  static const String addIcon = 'assets/images/add-icon.png';
  static const String profileIcon = 'assets/images/profile-icon.png';
  static const String searchIcon = 'assets/images/search-icon.png';
  static const String rightArrow = 'assets/images/arrow-right.png';
  static const String closeIcon = 'assets/images/close-icon.png';
  static const String archiveIcon = 'assets/images/archive-icon.png';
  static const String callIcon = 'assets/images/call-icon.png';
  static const String cameraIcon = 'assets/images/camera-icon.png';
  static const String categoryIcon = 'assets/images/category-icon.png';
  static const String clipboardTextIcon = 'assets/images/clipboard-text-icon.png';
  static const String documentUploadIcon = 'assets/images/document-upload-icon.png';
  static const String downArrowIcon = 'assets/images/down-arrow.png';
  static const String downTriangleIcon = 'assets/images/down-triangle-icon.png';
  static const String informationIcon = 'assets/images/information-icon.png';
  static const String locationIcon = 'assets/images/location-icon.png';
  static const String magicPenIcon = 'assets/images/magic-pen-icon.png';
  static const String mapIcon = 'assets/images/map-icon.png';
  static const String messageIcon = 'assets/images/message-icon.png';
  static const String penIcon = 'assets/images/pen-icon.png';
  static const String propertiesIcon = 'assets/images/properties-icon.png';
  static const String shareIcon = 'assets/images/share-icon.png';
  static const String upTriangleIcon = 'assets/images/up-triangle-icon.png';
  static const String map = 'assets/images/maps.jpg';

  static const String hotAds1 = 'assets/images/hot_ads1.jpg';
  static const String hotAds2 = 'assets/images/hot_ads2.jpg';
  static const String recentAds1 = 'assets/images/recent_ads1.jpg';
  static const String recentAds2 = 'assets/images/recent_ads2.jpg';
}

class MyTestList {
  static const List<Map<String, String>> hotAdsList = [
    {
      'imagePath': 'assets/images/hot_ads1.jpg',
      'title': 'ویلا ۵۰۰ متری زیر قیمت',
      'description': 'ویو عالی، سند تک برگ، سال ساخت ۱۴۰۲، تحویل فوری',
      'price': '۲۵٬۶۸۳٬۰۰۰٬۰۰۰',
    },
    {
      'imagePath': 'assets/images/hot_ads2.jpg',
      'title': 'واحد ۵ خواب متراژ ۲۵۰',
      'description': 'دکور شیک و مینیمال، موقعیت عالی، ۳ طبقه، ۳ واحد',
      'price': '۸٬۲۰۰٬۰۰۰٬۰۰۰',
    },
    {
      'imagePath': 'assets/images/hot_ads1.jpg',
      'title': 'ویلا ۵۰۰ متری زیر قیمت',
      'description': 'ویو عالی، سند تک برگ، سال ساخت ۱۴۰۲، تحویل فوری',
      'price': '۲۵٬۶۸۳٬۰۰۰٬۰۰۰',
    },
    {
      'imagePath': 'assets/images/hot_ads2.jpg',
      'title': 'واحد ۵ خواب متراژ ۲۵۰',
      'description': 'دکور شیک و مینیمال، موقعیت عالی، ۳ طبقه، ۳ واحد',
      'price': '۸٬۲۰۰٬۰۰۰٬۰۰۰',
    }
  ];

  static const List<Map<String, String>> recentAdsList = [
    {
      'imagePath': 'assets/images/recent_ads1.jpg',
      'title': 'واحد دوبلکس فول امکانات',
      'description': 'سال ساخت ۱۳۹۸، سند تک برگ، دوبلکس تجهیزات کامل',
      'price': '۲۵٬۶۸۳٬۰۰۰٬۰۰۰',
    },
    {
      'imagePath': 'assets/images/recent_ads2.jpg',
      'title': 'پنت هاوس ۳۰۰ متری ناهارخوران',
      'description': 'تحویل فوری، ویو عالی به همراه امکانات فول',
      'price': '۸٬۲۰۰٬۰۰۰٬۰۰۰',
    },
    {
      'imagePath': 'assets/images/recent_ads1.jpg',
      'title': 'واحد دوبلکس فول امکانات',
      'description': 'سال ساخت ۱۳۹۸، سند تک برگ، دوبلکس تجهیزات کامل',
      'price': '۲۵٬۶۸۳٬۰۰۰٬۰۰۰',
    },
    {
      'imagePath': 'assets/images/recent_ads2.jpg',
      'title': 'پنت هاوس ۳۰۰ متری ناهارخوران',
      'description': 'تحویل فوری، ویو عالی به همراه امکانات فول',
      'price': '۸٬۲۰۰٬۰۰۰٬۰۰۰',
    }
  ];

  static const List<String> firstStepOptionsList = [
    'اجاره مسکونی',
    'فروش مسکونی',
    'فروش دفاتر اداری و تجاری',
    'اجاره دفاتر اداری و تجاری',
    'اجاره کوتاه مدت',
    'پروژه های ساخت و ساز',
  ];

  static const List<String> secondStepOptionsList = [
    'فروش آپارتمان',
    'فروش خانه و ویلا',
    'فروش زمین و کلنگی',
  ];
}
