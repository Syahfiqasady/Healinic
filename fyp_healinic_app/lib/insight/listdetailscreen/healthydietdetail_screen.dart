import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/insight/listviewmodel/healthydiet_datamodel.dart';

class HealthyDietDetailScreen extends StatelessWidget {
  HealthyDietDetailScreen(this.healthyDietData);
  final HealthyDietData healthyDietData;

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
          healthyDietData.name,
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
                  healthyDietData.image,
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
                        healthyDietData.t1,
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
                          healthyDietData.desc1,
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
                        healthyDietData.t2,
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
                          healthyDietData.desc2,
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
                        healthyDietData.t3,
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
                          healthyDietData.desc3,
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
                        healthyDietData.t4,
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
                          healthyDietData.desc4,
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
                        healthyDietData.t5,
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
                          healthyDietData.desc5,
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
                        healthyDietData.t6,
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
                          healthyDietData.desc6,
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
