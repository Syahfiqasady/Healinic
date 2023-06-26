import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/dass21/ui_dass/test.dart';
import 'package:http/http.dart' as http;

class DassListView extends StatefulWidget {
  const DassListView({Key? key}) : super(key: key);

  @override
  State<DassListView> createState() => _DassListViewState();
}

class _DassListViewState extends State<DassListView> {
  getanxietyData() async {
    var url = 'https://healininc.000webhostapp.com/viewAnxiety.php';
    var response = await http.get(Uri.parse(url));
    var jsonData = json.decode(response.body);
    List<Anxiety> anxietys = [];

    for (var a in jsonData) {
      Anxiety anxiety = Anxiety(
          a['QAID'],
          a['answer1'],
          a['answer2'],
          a['answer3'],
          a['answer4'],
          a['mark1'],
          a['mark2'],
          a['mark3'],
          a['mark4'],
          a['question']);
      anxietys.add(anxiety);
    }
    print(anxietys.length);
    return anxietys;
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
        height: 470,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          child: FutureBuilder<dynamic>(
              future: getanxietyData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: (snapshot.data as List).length,
                      itemBuilder: (context, i) {
                        return ListTile(
                          leading: Text(snapshot.data![i].QAID + ".",
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

class Anxiety {
  String QAID;
  String question,
      answer1,
      answer2,
      answer3,
      answer4,
      mark1,
      mark2,
      mark3,
      mark4;

  Anxiety(this.QAID, this.answer1, this.answer2, this.answer3, this.answer4,
      this.mark1, this.mark2, this.mark3, this.mark4, this.question);
}
