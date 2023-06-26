import 'package:flutter/material.dart';

class SandakanListData {
  SandakanListData({
    this.name = ' ',
    this.caption = ' ',
    this.email = ' ',
    this.website = ' ',
  });

  String name, caption, email, website;

  static List<SandakanListData> sandakanlist = <SandakanListData>[
    SandakanListData(
      name: 'ID : 144 \n Hospital Duchess of Kent',
      caption:
      'Hospital Duchess of Kent, KM3.2 Jalan Utara 90000 Sandakan Sabah',
      email: 'hdok@moh.gov.my',
      website: 'https://hdok.moh.gov.my/v8/index.php',
    ),
  ];
}