import 'package:flutter/material.dart';

class KeningauListData {
  KeningauListData({
    this.name = ' ',
    this.caption = ' ',
    this.email = ' ',
    this.website = ' ',
  });

  String name, caption, email, website;

  static List<KeningauListData> keningaulist = <KeningauListData>[
    KeningauListData(
      name: 'ID : 142 \n Hospital Keningau',
      caption: 'Peti Surat 11, Keningau, 89007, Sabah',
      email: 'pengarah.keningau@moh.gov.my',
      website: '',
    ),
  ];
}