import 'dart:convert';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/insight/listviewmodel/motivation_datamodel.dart';

class MotivationDetailScreen extends StatelessWidget {
  MotivationDetailScreen(this.motivationData);
  final MotivationData motivationData;

  final Shader _linearGradient = LinearGradient(
    colors: [Colors.yellow, Colors.brown.shade100],
    begin: Alignment.centerLeft,
    end: Alignment.bottomRight,
  ).createShader(Rect.fromLTWH(0.0, 0.0, 320.0,
      80.0)); // Creates a Shader for this gradient to fill the given rec

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealinicTheme.mainTheme,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          motivationData.name,
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: HealinicTheme.nearlyWhite,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Image.asset(
                  motivationData.image,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                color: HealinicTheme.nearlyWhite,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        motivationData.t1,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            height: 1.5,
                            color: HealinicTheme.buttonBgb,
                            fontFamily: HealinicTheme.fontName,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          motivationData.desc1,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              letterSpacing: 0.5,
                              height: 1.5,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        motivationData.t2,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            height: 1.5,
                            color: HealinicTheme.buttonBgb,
                            fontFamily: HealinicTheme.fontName,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          motivationData.desc2,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              letterSpacing: 0.5,
                              height: 1.5,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        motivationData.t3,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            height: 1.5,
                            color: HealinicTheme.buttonBgb,
                            fontFamily: HealinicTheme.fontName,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          motivationData.desc3,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              letterSpacing: 0.5,
                              height: 1.5,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        motivationData.t4,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            height: 1.5,
                            color: HealinicTheme.buttonBgb,
                            fontFamily: HealinicTheme.fontName,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          motivationData.desc4,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              letterSpacing: 0.5,
                              height: 1.5,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        motivationData.t5,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            height: 1.5,
                            color: HealinicTheme.buttonBgb,
                            fontFamily: HealinicTheme.fontName,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          motivationData.desc5,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              letterSpacing: 0.5,
                              height: 1.5,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        motivationData.t6,
                        style: TextStyle(
                            letterSpacing: 0.5,
                            height: 1.5,
                            color: HealinicTheme.buttonBgb,
                            fontFamily: HealinicTheme.fontName,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          motivationData.desc6,
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              letterSpacing: 0.5,
                              height: 1.5,
                              fontWeight: FontWeight.w700,
                              fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "- END -",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w900,
                    foreground: Paint()..shader = _linearGradient),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
