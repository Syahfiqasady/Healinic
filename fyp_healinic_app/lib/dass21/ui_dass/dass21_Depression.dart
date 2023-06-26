import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/dass21/ui_dass/test.dart';
import 'package:http/http.dart' as http;

class DepressionListView extends StatefulWidget {
  const DepressionListView({Key? key}) : super(key: key);

  @override
  State<DepressionListView> createState() => _DepressionListViewState();
}

class _DepressionListViewState extends State<DepressionListView> {
  getdepressionData() async {
    var url = 'https://healininc.000webhostapp.com/viewDepression.php';
    var response = await http.get(Uri.parse(url));
    var jsonData = json.decode(response.body);
    List<Depression> depressions = [];

    for (var d in jsonData) {
      Depression depression = Depression(
          d['QDID'],
          d['answer1'],
          d['answer2'],
          d['answer3'],
          d['answer4'],
          d['mark1'],
          d['mark2'],
          d['mark3'],
          d['mark4'],
          d['question']);
      depressions.add(depression);
    }
    print(depressions.length);
    return depressions;
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
        height: 420,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          child: FutureBuilder<dynamic>(
              future: getdepressionData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: (snapshot.data as List).length,
                      itemBuilder: (context, i) {
                        return ListTile(
                          leading: Text(snapshot.data![i].QDID + ".",
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

class Depression {
  String QDID;
  String question,
      answer1,
      answer2,
      answer3,
      answer4,
      mark1,
      mark2,
      mark3,
      mark4;

  Depression(this.QDID, this.answer1, this.answer2, this.answer3, this.answer4,
      this.mark1, this.mark2, this.mark3, this.mark4, this.question);
}
