import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/bottom_navigation/navtabIcon.dart';
import 'package:fyp_healinic_app/bottom_navigation/navbar_design.dart';
import 'package:fyp_healinic_app/home_page/home.dart';
import 'package:fyp_healinic_app/insight/insight_main.dart';
import 'package:fyp_healinic_app/map_page/map_main.dart';
import 'package:fyp_healinic_app/profile_page/profile_main.dart';

//////FOR THE NAVIGATION SCREEN///////

class HealinicHomeScreen extends StatefulWidget {
  @override
  _HealinicHomeScreenState createState() => _HealinicHomeScreenState();
}

class _HealinicHomeScreenState extends State<HealinicHomeScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  List<TabIconData> tabIconsList = TabIconData.tabIconsList;

  Widget tabBody = Container(
    color: HealinicTheme.mainTheme,
  );

  @override
  void initState() {
    tabIconsList.forEach((TabIconData tab) {
      tab.isSelected = false;
    });
    tabIconsList[0].isSelected = true;

    animationController = AnimationController(
        duration: const Duration(milliseconds: 600), vsync: this);
    tabBody = HomePageS(animationController: animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HealinicTheme.mainTheme,
      child: Scaffold(
        backgroundColor: HealinicTheme.buttonsWord,
        body: FutureBuilder<bool>(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
            if (!snapshot.hasData) {
              return const SizedBox();
            } else {
              return Stack(
                children: <Widget>[
                  tabBody,
                  bottomBar(),
                ],
              );
            }
          },
        ),
      ),
    );
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  Widget bottomBar() {
    return Column(
      children: <Widget>[
        const Expanded(
          child: SizedBox(),
        ),
        BottomBarView(
          tabIconsList: tabIconsList,
          addClick: () {},
          changeIndex: (int index) {
            if (index == 0) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  //set the first page is the homepage
                  tabBody = HomePageS(animationController: animationController);
                });
              });
            }

            ///// IF CLICK THE 2ND ICON GO TO INSIGHT PAGE ////////////
            else if (index == 1) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody = InsightMainScreen(
                      animationController: animationController);
                });
              });
            }

            ///// IF CLICK THE 2ND ICON GO TO MAP PAGE ////////////
            else if (index == 2) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody =
                      MapMainScreen(animationController: animationController);
                });
              });
            }

            ///// IF CLICK THE 2ND ICON GO TO PROFILE PAGE ////////////
            else if (index == 3) {
              animationController?.reverse().then<dynamic>((data) {
                if (!mounted) {
                  return;
                }
                setState(() {
                  tabBody = ProfilePageUi(
                      animationController: animationController);
                });
              });
            }
          },
        ),
      ],
    );
  }
}
