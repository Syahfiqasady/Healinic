import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/insight/listdetailscreen/healthydietdetail_screen.dart';
import 'package:fyp_healinic_app/insight/listviewmodel/healthydiet_datamodel.dart';

class HealthyDietListViewScreen extends StatelessWidget {
  const HealthyDietListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Healthy Diet',
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
      backgroundColor: HealinicTheme.mainTheme,
      body: ListView.builder(
          itemCount: HealthyDietData.healthydietList.length,
          itemBuilder: (context, index) {
            HealthyDietData healthydietData =
                HealthyDietData.healthydietList[index];
            return Card(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
              child: ListTile(
                title: Image.asset(
                  healthydietData.image,
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 150,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    healthydietData.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                onTap: () {
                  // print(jsonEncode(products[index]));
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              HealthyDietDetailScreen(healthydietData)));
                },
              ),
            );
          }),
    );
  }
}
