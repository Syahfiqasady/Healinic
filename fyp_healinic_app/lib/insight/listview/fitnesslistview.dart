import 'dart:convert';
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/insight/listdetailscreen/fitnessdetail_screen.dart';
import 'package:fyp_healinic_app/insight/listviewmodel/fitness_datamodel.dart';

class FitnessListViewScreen extends StatelessWidget {
  const FitnessListViewScreen({Key? key}) : super(key: key);

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
          itemCount: FitnessData.fitnessList.length,
          itemBuilder: (context, index){
            FitnessData fitnessData = FitnessData.fitnessList[index];
            return Card(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 10),
              child: ListTile(
                title: Image.asset(
                  fitnessData.image,
                  fit: BoxFit.fill,
                  width: double.infinity,
                  height: 150,
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    fitnessData.name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold),
                  ),
                ),

                onTap: () {
                  // print(jsonEncode(products[index]));
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>FitnessDetailScreen(fitnessData)));
                },

              ),

            );

          }),
    );
  }


}
