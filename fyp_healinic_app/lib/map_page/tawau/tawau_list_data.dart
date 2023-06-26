import 'package:flutter/material.dart';

class TawauListData {
  TawauListData({
    this.name = ' ',
    this.caption = ' ',
    this.email = ' ',
    this.website = ' ',
  });

  String name, caption, email, website;

  static List<TawauListData> tawaulist = <TawauListData>[
    TawauListData(
      name: 'ID : 145 \n Hospital Tawau',
      caption: 'KM1 Jalan Hospital 91007 Tawau Sabah',
      email: 'pengarah.tawau@moh.gov.my',
      website: 'https://htwu.moh.gov.my/v3/index.php',
    ),
  ];
}