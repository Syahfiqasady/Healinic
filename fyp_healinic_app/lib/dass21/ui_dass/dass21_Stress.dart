import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/dass21/ui_dass/test.dart';
import 'package:http/http.dart' as http;

class StressListView extends StatefulWidget {
  const StressListView({Key? key}) : super(key: key);

  @override
  State<StressListView> createState() => _StressListViewState();
}

class _StressListViewState extends State<StressListView> {
  getanxietyData() async {
    var url = 'https://healininc.000webhostapp.com/viewStress.php';
    var response = await http.get(Uri.parse(url));
    var jsonData = json.decode(response.body);
    List<Stress> stresss = [];

    for (var s in jsonData) {
      Stress stress = Stress(
          s['QSID'],
          s['answer1'],
          s['answer2'],
          s['answer3'],
          s['answer4'],
          s['mark1'],
          s['mark2'],
          s['mark3'],
          s['mark4'],
          s['question']);
      stresss.add(stress);
    }
    print(stresss.length);
    return stresss;
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Container(
        height: 440,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          child: FutureBuilder<dynamic>(
              future: getanxietyData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: (snapshot.data as List).length,
                      itemBuilder: (context, i) {
                        return ListTile(
                          leading: Text(snapshot.data![i].QSID + ".",
                              style: TextStyle(
                                fontFamily: HealinicTheme.fontName,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: HealinicTheme.titleWord,
                              )),
                          title: Text(snapshot.data![i].question,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontFamily: HealinicTheme.fontName,
                                fontWeight: FontWeight.w400,
                                fontSize: 15,
                                color: HealinicTheme.titleWord,
                              )),
                        );
                      });
                } else if (snapshot.hasError) {
                  return Center(
                    child: Text(snapshot.error.toString()),
                  );
                } else {
                  return CircularProgressIndicator();
                }
              }),
        ),
      ),
    );
  }
}

class Stress {
  String QSID;
  String question,
      answer1,
      answer2,
      answer3,
      answer4,
      mark1,
      mark2,
      mark3,
      mark4;

  Stress(this.QSID, this.answer1, this.answer2, this.answer3, this.answer4,
      this.mark1, this.mark2, this.mark3, this.mark4, this.question);
}
