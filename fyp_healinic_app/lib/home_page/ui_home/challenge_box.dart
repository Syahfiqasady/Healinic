import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/challenge/anxiety_challenge.dart';
import 'package:fyp_healinic_app/challenge/depress_challenge.dart';
import 'package:fyp_healinic_app/challenge/stress_challenge.dart';
import 'package:fyp_healinic_app/diary/diary_screen.dart';
import 'package:fyp_healinic_app/home_page/ui_home/challenge_list_data.dart';
import 'package:fyp_healinic_app/home_page/ui_home/challenge_list_view.dart';

class ChallengeBox extends StatelessWidget {
  final AnimationController? animationController; //for the animation
  final Animation<double>? animation;

  ChallengeBox(
      {Key? key,
      this.animationController,
      this.animation}) //declare the animation
      : super(key: key);
  List<ChallengeListData> challengeList = ChallengeListData.challengelist;
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext, Widget? child) {
          return FadeTransition(
            opacity: animation!,
            child: new Transform(
              transform: new Matrix4.translationValues(
                  0.0, 30 * (1.0 - animation!.value), 0.0),
              child: Container(
                height: 350,
                decoration: BoxDecoration(
                    color: HealinicTheme.nearlyWhite,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24.0),
                        topRight: Radius.circular(24.0))),
                child: Column(
                  children: <Widget>[
                    getWord(),
                    Container(
                      width: 300,
                      height: 60.0,
                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AnxietyChallenge()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [HealinicTheme.buttonBgb, HealinicTheme.mainTheme],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 400.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "ANXIETY",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: HealinicTheme.fontName,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 60.0,
                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StressChallenge()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [HealinicTheme.buttonBgb, HealinicTheme.mainTheme],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 400.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "STRESS",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: HealinicTheme.fontName,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 60.0,
                      margin: EdgeInsets.all(10),
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DepressChallenge()));
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        padding: EdgeInsets.all(0.0),
                        child: Ink(
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [HealinicTheme.buttonBgb, HealinicTheme.mainTheme],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              borderRadius: BorderRadius.circular(8.0)),
                          child: Container(
                            constraints: BoxConstraints(
                                maxWidth: 400.0, minHeight: 50.0),
                            alignment: Alignment.center,
                            child: Text(
                              "DEPRESSION",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: HealinicTheme.fontName,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Widget getWord() {
    return Column(
      children: [
        Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10, left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Challenges",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                          color: HealinicTheme.darkText,
                        ),
                      ),
                      Text(
                        "Challenge yourself and improve your life!",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontFamily: HealinicTheme.fontName,
                          fontWeight: FontWeight.normal,
                          fontSize: 12,
                          color: HealinicTheme.grey.withOpacity(0.5),
                        ),
                      ),
                    ],
                  ))
                ],
              ),
            )
          ],
        ),
      ],
      //////INSIDE THE BOX/////////////
    );
  }

  Widget getList() {
    return Container(
      color: Colors.transparent,
      child: ListView.builder(
        controller: scrollController,
        itemCount: challengeList.length,
        padding: const EdgeInsets.only(top: 8),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return ChallengeListView(
            callback: () {},
            challengeData: challengeList[index],
            animation: animation,
            animationController: animationController!,
          );
        },
      ),
    );
  }
}
