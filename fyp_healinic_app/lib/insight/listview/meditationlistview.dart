import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/insight/listdetailscreen/meditationdetail_screen.dart';
import 'package:fyp_healinic_app/insight/listviewmodel/meditation_datamodel.dart';

class MeditationListViewScreen extends StatefulWidget {
  const MeditationListViewScreen({Key? key}) : super(key: key);

  @override
  _MeditationListViewScreenState createState() =>
      _MeditationListViewScreenState();
}

class _MeditationListViewScreenState extends State<MeditationListViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: true,
        title: Text(
          'Fitness',
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
          itemCount: MeditationData.meditationList.length,
          itemBuilder: (context, index){
            MeditationData meditationData = MeditationData.meditationList[index];
            return Card(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
              child: ListTile(
                title: Image.asset(
                  meditationData.image,
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 150,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    meditationData.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold),
                  ),
                ),

                onTap: () {
                  // print(jsonEncode(products[index]));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MeditationDetailScreen(meditationData)));
                },

              ),

            );

          }),
    );
  }
}
