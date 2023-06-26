import 'package:flutter/material.dart';

///////Bottom Navigation tab's icon//////

class TabIconData {
  TabIconData({
    this.imagePath = '',
    this.index = 0,
    this.selectedImagePath = '',
    this.isSelected = false,
    this.animationController,
  });

  String imagePath;
  String selectedImagePath;
  bool isSelected;
  int index;

  AnimationController? animationController;

  static List<TabIconData> tabIconsList = <TabIconData>[
    TabIconData(
      imagePath: 'assets/nav_icon/home.png', //before click
      selectedImagePath: 'assets/nav_icon/home_1.png', //clicked
      index: 0, //1st icon
      isSelected: true,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/nav_icon/book.png', //before click
      selectedImagePath: 'assets/nav_icon/book_1.png', //clicked
      index: 1, //2nd icon
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/nav_icon/map.png', //before click
      selectedImagePath: 'assets/nav_icon/map_1.png', //clicked
      index: 2, //3rd icon
      isSelected: false,
      animationController: null,
    ),
    TabIconData(
      imagePath: 'assets/nav_icon/user.png', //before click
      selectedImagePath: 'assets/nav_icon/user_1.png', //clicked
      index: 3, //4th icon
      isSelected: false,
      animationController: null,
    ),
  ];
}
