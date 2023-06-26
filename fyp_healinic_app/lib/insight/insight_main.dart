import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/insight/listview/fitnesslistview.dart';
import 'package:fyp_healinic_app/insight/listview/healthydietlistview.dart';
import 'package:fyp_healinic_app/insight/listview/meditationlistview.dart';
import 'package:fyp_healinic_app/insight/listview/motivationlistview.dart';
import 'package:fyp_healinic_app/insight/listview/musiclistview.dart';
import 'package:fyp_healinic_app/insight/listview/tipsntrick.dart';

import 'listview/musiclistview.dart';

class InsightMainScreen extends StatefulWidget {
  const InsightMainScreen({Key? key, this.animationController})
      : super(key: key);
  final AnimationController? animationController;
  static const String routeName = '/product-list';

  @override
  _InsightMainScreenState createState() => _InsightMainScreenState();
}

class _InsightMainScreenState extends State<InsightMainScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;

  CategoryType categoryType = CategoryType.music;

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
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
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  onTap: () {
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                  child: Column(
                    children: <Widget>[
                      getAppBar(),
                      getCategoryUI(),
                      SizedBox(
                        height: 25,
                      ),
                      getBodyWidget(),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }

//////////////////SHOW THE CATEGORY BUTTON////////////////////
  Widget getCategoryUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 14, left: 20, right: 20),
          child: Row(
            children: <Widget>[
              getButton(CategoryType.music, categoryType == CategoryType.music),
              const SizedBox(
                width: 16,
              ),
              getButton(
                  CategoryType.fitness, categoryType == CategoryType.fitness),
              const SizedBox(
                width: 16,
              ),
              getButton(CategoryType.motivation,
                  categoryType == CategoryType.motivation),
            ],
          ),
        ),

        //////2nd row of button/////
        const SizedBox(
          height: 13,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            children: <Widget>[
              getButton(CategoryType.healthyDiet,
                  categoryType == CategoryType.healthyDiet),
              const SizedBox(
                width: 16,
              ),
              getButton(CategoryType.meditation,
                  categoryType == CategoryType.meditation),
              const SizedBox(
                width: 16,
              ),
              getButton(CategoryType.tipsNtrick,
                  categoryType == CategoryType.tipsNtrick),
            ],
          ),
        ),
      ],
    );
  }

//////////////////CATEGORY'S BUTTON DESGIN////////////////////
  Widget getButton(CategoryType categoryTypeData, bool isSelected) {
    String txt = '';
    if (CategoryType.music == categoryTypeData) {
      txt = 'Music';
    } else if (CategoryType.fitness == categoryTypeData) {
      txt = 'Fitness';
    } else if (CategoryType.motivation == categoryTypeData) {
      txt = 'Motivation';
    } else if (CategoryType.healthyDiet == categoryTypeData) {
      txt = 'Diet';
    } else if (CategoryType.meditation == categoryTypeData) {
      txt = 'Meditation';
    } else if (CategoryType.tipsNtrick == categoryTypeData) {
      txt = 'Tips&Trick';
    }

    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: isSelected
                ? HealinicTheme.buttonSelected
                : HealinicTheme.nearlyWhite,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            border: Border.all(color: HealinicTheme.nearlyWhite)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },

            ///////////TEXT IN THE BOX////////
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 8, bottom: 8, left: 15, right: 15),
              child: Center(
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: HealinicTheme.fontName,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    letterSpacing: 0.27,
                    color: isSelected
                        ? HealinicTheme.nearlyWhite
                        : HealinicTheme.darkerText,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getBodyWidget() {
    ////////////////// Music ////////////////////

    if (categoryType == CategoryType.music) {
      return Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 18, left: 18),
                child: Text(("How Music Plays A role in Our Mental Health?"),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Column(
                          ////////////Make it right///////
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                    text:
                                        ("Regardless of language or style, music has undeniably reached the masses. "
                                            "Music is a source of comfort to many. "
                                            "Big Hit Entertainment, the company behind super boyband BTS, "
                                            "is committed to their motto of providing “music and artist for healing”."),
                                    style: TextStyle(
                                        letterSpacing: 0.5,
                                        height: 1.5,
                                        fontFamily: HealinicTheme.fontName,
                                        color: Colors.black,
                                        fontSize: 12.0)),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.library_music_outlined,
                                      color: Colors.blueAccent,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          (" Elevate your mood and motivation"),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.scatter_plot,
                                      color: Colors.blueGrey,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          (" The bright musical tones and lyrics will change or elevate your mood "
                                              "and empower you for the day ahead. \n "
                                              "In fact, researchers have claimed classical and ambient music have the best mood-boosting benefits, while metal "
                                              "and hard electronic music were considered to have the opposite effect."),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 12.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.library_music_outlined,
                                      color: Colors.blueAccent,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text: (" Reduce stress"),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.scatter_plot,
                                      color: Colors.blueGrey,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          (" Whether playing in the background or you’re giving it your full attention, "
                                              "certain genres of music have the innate ability to reduce stress.\n"
                                              "Soft, ambient music provides calming stimulation for the mind. \n"
                                              "In this case, best avoid loud rock or metal to moderate your stress."),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 12.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.library_music_outlined,
                                      color: Colors.blueAccent,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text: (" Improve focus"),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.scatter_plot,
                                      color: Colors.blueGrey,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          (" Certain types of music are known to boost focus, "
                                              "so it’s important to know which music is right for improving focus.\n"
                                              "We recommend listening to instrumental, classical or ambient music."),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 12.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.library_music_outlined,
                                      color: Colors.blueAccent,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text: (" Help relaxation"),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.scatter_plot,
                                      color: Colors.blueGrey,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          (" Playing music is a simple way of promoting relaxation as it releases tension in your muscles, "
                                              "carrying away any stress or anxiety.\n"
                                              "When your muscles are loose, so is your mind.\n"
                                              "Listening to music as you drift off to sleep is also an effective way of relaxing "
                                              "and reducing stress as it can help slow your breathing and calm your mind."),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 12.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Center(
                              child: MaterialButton(
                                color: Color(0xffe2b48f),
                                minWidth: 100,
                                height: 50,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => MusicApp()));
                                },
                                // defining the shape
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Find Out More",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      );
    }

////////////////// FITNESS ////////////////////

    else if (categoryType == CategoryType.fitness) {
      return Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Text(("Why Fitness related to Mental Health?"),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Column(
                          ////////////Make it right///////
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.bubble_chart,
                                      color: Colors.greenAccent,
                                      size: 30.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          ("People who exercise regularly have better mental health and emotional wellbeing, "
                                              "and lower rates of mental illness."),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 15.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.bubble_chart,
                                      color: Colors.greenAccent,
                                      size: 30.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          ("Exercise is important for people with mental illness – it not only boosts our mood, "
                                              "concentration and alertness, but improves our cardiovascular and overall physical health."),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 15.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.bubble_chart,
                                      color: Colors.greenAccent,
                                      size: 30.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          ("Exercise doesn’t have to be strenuous, structured or take a long time."),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 15.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.bubble_chart,
                                      color: Colors.greenAccent,
                                      size: 30.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          ("Experts suggest 30 minutes of exercise, at least five days a week, can make a big difference."),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 15.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Center(
                              child: MaterialButton(
                                color: Color(0xffe2b48f),
                                minWidth: 100,
                                height: 50,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              FitnessListViewScreen()));
                                },
                                // defining the shape
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Find Out More",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      );
    }

    ////////////////// Motivation ////////////////////

    else if (categoryType == CategoryType.motivation) {
      return Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 15, left: 15),
                child: Text(
                    ("How Having No Motivation Affects Your Mental Health"),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Column(
                          ////////////Make it right///////
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                    text:
                                        ("Motivation is the desire to act in service of a goal. "
                                            "It's the crucial element in setting and attaining our objectives."
                                            "Motivation is one of the driving forces behind human behavior. "
                                            "It fuels competition and sparks social connection. Its absence can lead to mental illnesses such as depression. Motivation encompasses the desire to continue striving toward meaning, purpose,"
                                            "and a life worth living."),
                                    style: TextStyle(
                                        letterSpacing: 0.5,
                                        height: 1.5,
                                        fontFamily: HealinicTheme.fontName,
                                        color: Colors.black,
                                        fontSize: 15.0)),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Center(
                              child: MaterialButton(
                                color: Color(0xffe2b48f),
                                minWidth: 100,
                                height: 50,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MotivationListViewScreen()));
                                },
                                // defining the shape
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Find Out More",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      );
    }

    ////////////////// Healthy Diet ////////////////////

    else if (categoryType == CategoryType.healthyDiet) {
      return Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5.0),
              child: Text(("How are diet and mental health linked?"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Column(
                          ////////////Make it right///////
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                    text:
                                        ("What we eat doesn’t just affect our physical health: "
                                            "it can also affect our mental health and wellbeing. \n\n"
                                            "Eating well – which means having a balanced diet full of vegetables and nutrients – "
                                            "can improve your sense of wellbeing and your mood.\n\n"
                                            "Our diet can affect our brain. Some foods can help us feel better. "
                                            "A Mediterranean-style diet (one with lots of vegetables, seafood, fresh herbs, garlic, olive oil, cereal and grains) "
                                            "supplemented with fish oil can reduce the symptoms of depression. "
                                            "Research has also shown that our gut can reflect how we're feeling: if we're stressed, it can speed up or slow down. "
                                            "Healthy food for our gut includes fruit, vegetables, beans and probiotics. "),
                                    style: TextStyle(
                                        letterSpacing: 0.5,
                                        height: 1.5,
                                        fontFamily: HealinicTheme.fontName,
                                        color: Colors.black,
                                        fontSize: 14.0)),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Center(
                              child: MaterialButton(
                                color: Color(0xffe2b48f),
                                minWidth: 100,
                                height: 50,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              HealthyDietListViewScreen()));
                                },
                                // defining the shape
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Find Out More",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      );
    }
    ////////////////// Meditation ////////////////////

    else if (categoryType == CategoryType.meditation) {
      return Container(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 18, left: 15),
                child: Text(("Why meditation good for your mental health?"),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                    text:
                                        ("Regular meditation can decreased stress, improved concentration, "
                                            "lower blood pressure, and reduced symptoms of anxiety and depression, "
                                            "just to name a few. And while there are different types of meditation, "
                                            "they can all offer a similar set of proven benefits for mental and physical health"),
                                    style: TextStyle(
                                        letterSpacing: 0.5,
                                        height: 1.5,
                                        fontFamily: HealinicTheme.fontName,
                                        color: Colors.black,
                                        fontSize: 14.0)),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.schedule_sharp,
                                      color: Colors.redAccent,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text: (" Better focus and concentration"),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.scatter_plot,
                                      color: Colors.blueGrey,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          (" Mindfulness meditation helps you focus on the present, "
                                              "which can improve your concentration on other tasks in daily life. "),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 12.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.schedule_sharp,
                                      color: Colors.redAccent,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          (" Improve self-esteem and self-awareness"),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.scatter_plot,
                                      color: Colors.blueGrey,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          (" Mindfulness meditation encourages you to slow down, allows for deeper self-reflection, "
                                              "and can help you discover positive attributes about yourself. \n"
                                              "'Mindfulness helps increase self-awareness by increasing "
                                              "the ability to examine one's thoughts and feelings without judgment,"
                                              "which ends up improving self-esteem,' says Brian Wind, PhD, Chief Clinical Officer at JourneyPure."),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 12.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.schedule_sharp,
                                      color: Colors.redAccent,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text: (" Reduce stress"),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.scatter_plot,
                                      color: Colors.blueGrey,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          (" Mindfulness meditation can also lower the levels of cortisol — "
                                              "the stress hormone —which helps you feel more relaxed. "),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 12.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.schedule_sharp,
                                      color: Colors.redAccent,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text: (" Manage anxiety or depression"),
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              textAlign: TextAlign.justify,
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.scatter_plot,
                                      color: Colors.blueGrey,
                                      size: 22.0,
                                    ),
                                  ),
                                  TextSpan(
                                      text:
                                          (" Mindfulness meditation helps train your mind to focus on the present, "
                                              "making you less likely to ruminate on anxious thoughts that can fuel "
                                              "depression. "),
                                      style: TextStyle(
                                          letterSpacing: 0.5,
                                          height: 1.5,
                                          color: Colors.black,
                                          fontSize: 12.0)),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Center(
                              child: MaterialButton(
                                color: Color(0xffe2b48f),
                                minWidth: 100,
                                height: 50,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              MeditationListViewScreen()));
                                },
                                // defining the shape
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Find Out More",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      );
    }
    ////////////////// Tips N trick ////////////////////

    else if (categoryType == CategoryType.tipsNtrick) {
      return Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(5.0),
              child: Text(("Tips for your mental health"),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0)),
            ),
            SizedBox(
              height: 10,
            ),
            ClipRRect(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Column(
                          ////////////Make it right///////
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: RichText(
                                textAlign: TextAlign.justify,
                                text: TextSpan(
                                    text:
                                        ("We all experience disappointment, loss, and change. "
                                            "And while a normal part of life, these emotions and experiences still cause sadness, anxiety, and stress. "
                                            "But just as physically healthy people are better able"
                                            " to bounce back from illness or injury; people with strong mental health "
                                            "are better able to bounce back from adversity, trauma, and stress. "
                                            "This skill is called resilience. People who are emotionally and mentally resilient "
                                            "have the tools for coping with difficult situations and maintaining a positive outlook. "
                                            "They remain focused, flexible, and productive, in bad times as well as good."),
                                    style: TextStyle(
                                        letterSpacing: 0.5,
                                        height: 1.5,
                                        fontFamily: HealinicTheme.fontName,
                                        color: Colors.black,
                                        fontSize: 14.0)),
                              ),
                            ),
                            Center(
                              child: MaterialButton(
                                color: Color(0xffe2b48f),
                                minWidth: 100,
                                height: 50,
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              TipsnTrickListViewScreen()));
                                },
                                // defining the shape
                                shape: RoundedRectangleBorder(
                                    side: BorderSide(
                                      color: Colors.white,
                                    ),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  "Find Out More",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 100,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      );
    } else {
      return Text("Nothing to Show");
    }
  }

//////////////////APP BAR DESIGN////////////////////
  Widget getAppBar() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0)),
        color: HealinicTheme.nearlyWhite,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 8.0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 8, right: 8),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Center(
                child: Text(
                  'Insight',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum CategoryType {
  music,
  fitness,
  motivation,
  healthyDiet,
  meditation,
  tipsNtrick,
}
