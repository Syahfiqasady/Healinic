import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/insight/listdetailscreen/motivationdetail_screen.dart';
import 'package:fyp_healinic_app/insight/listviewmodel/motivation_datamodel.dart';

class MotivationListViewScreen extends StatefulWidget {
  const MotivationListViewScreen({Key? key}) : super(key: key);

  @override
  _MotivationListViewScreenState createState() =>
      _MotivationListViewScreenState();
}

class _MotivationListViewScreenState extends State<MotivationListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Motivation',
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
          itemCount: MotivationData.motivationList.length,
          itemBuilder: (context, index) {
            MotivationData motivationData =
                MotivationData.motivationList[index];
            return Card(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
              child: ListTile(
                title: Image.asset(
                  motivationData.image,
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 150,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    motivationData.name,
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
                              MotivationDetailScreen(motivationData)));
                },
              ),
            );
          }),
    );
    return Container();
  }
}
