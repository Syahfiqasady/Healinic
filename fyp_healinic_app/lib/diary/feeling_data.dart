import 'package:flutter/material.dart';

class Feeling {

  final String title;
  bool isSelected;

  Feeling( this.title, this.isSelected);
}

List<Feeling> feelingList = [
  Feeling('Courageous',false),
  Feeling( 'Pleased',false),
  Feeling( 'Fortunate',false),
  Feeling('Cheerful',false),
  Feeling( 'Thrilled',false),
  Feeling( 'Honoured',false),
  Feeling( 'Grateful',false),
  Feeling( 'Bliss',false),
  Feeling( 'Touched',false),
  Feeling( 'Overjoyed',false),
];

List<Feeling> selectedFeeling = [];


