import 'package:flutter/material.dart';

class LdListData {
  LdListData({
    this.name = ' ',
    this.caption = ' ',
    this.email = ' ',
    this.website = ' ',
  });

  String name, caption, email, website;

  static List<LdListData> ldlist = <LdListData>[
    LdListData(
      name: 'ID : 143 \n Hospital Lahad Datu',
      caption:
      'Hospital Lahad Datu, Peti Surat 60065, 91110, Lahad Datu, Sabah.',
      email: 'pengarah.hldu@moh.gov.my',
      website: 'https://hldu.moh.gov.my/',
    ),
  ];
}