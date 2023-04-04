import 'package:flutter/material.dart';
import 'package:quick_fix/feature/home/model/category_data.dart';

class HomeData {
  static const greetings = 'Good Morning';
  static const name = 'Jane Doe';

  // special offers
  static const offerPercent = '30%';
  static const offerTitle = 'Today\'s Special!';
  static const offerSubTitle = 'Get a discount for every order today';

  // categories
  static const categories = [
    CategoryData('Cleaning', Icons.cleaning_services, Color(0xfffac3e3)),
    CategoryData('Repair', Icons.settings, Color(0xffd3d1ff)),
    CategoryData('Painting', Icons.format_paint_outlined, Color(0xffd4fbce)),
  ];

  // popular tags
  static const popularTags = ['All', 'Cleaning', 'Repair', 'Painting'];
}
