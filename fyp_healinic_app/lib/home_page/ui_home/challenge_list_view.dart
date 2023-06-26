import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/home_page/ui_home/challenge_list_data.dart';
import 'package:fyp_healinic_app/home_page/ui_home/morning_routine.dart';

class ChallengeListView extends StatelessWidget {
  const ChallengeListView(
      {Key? key,
      this.challengeData,
      this.animationController,
      this.animation,
      this.callback})
      : super(key: key);

  final ChallengeListData? challengeData;
  final AnimationController? animationController;
  final Animation<double>? animation;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext context, Widget? child) {
          return FadeTransition(
            opacity: animation!,
            child: Transform(
              transform: Matrix4.translationValues(
                  0.0, 50 * (1.0 - animation!.value), 0.0),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 55,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 24, right: 24, top: 0, bottom: 0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: <Widget>[
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MorningRoutine()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: HealinicTheme.nearlyWhite,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.0),
                                  bottomLeft: Radius.circular(8.0),
                                  bottomRight: Radius.circular(8.0),
                                  topRight: Radius.circular(8.0)),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: HealinicTheme.grey.withOpacity(0.4),
                                    offset: Offset(1.1, 1.1),
                                    blurRadius: 10.0),
                              ],
                            ),
                            child: Stack(
                              alignment: Alignment.topLeft,
                              children: <Widget>[
                                ClipRRect(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  child: SizedBox(
                                    height: 80,
                                    child: AspectRatio(
                                      aspectRatio: 1.714,
                                      child:
                                          Image.asset("assets/Image/back.png"),
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 20),
                                          child: Text(
                                            challengeData!.titleTxt,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily:
                                                  HealinicTheme.fontName,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 22,
                                              letterSpacing: 0.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 40,
                                        bottom: 15,
                                        top: 8,
                                      ),
                                      child: Text(
                                        challengeData!.subTxt,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontFamily: HealinicTheme.fontName,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          letterSpacing: 0.0,
                                          color: HealinicTheme.grey
                                              .withOpacity(0.5),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
