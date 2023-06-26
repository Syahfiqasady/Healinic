import 'package:flutter/foundation.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Event {
  final String title;
  Event({required this.title, required this.date, required Widget icon, required Container dot, });

  String toString() => this.title;
  String date;

  List<Event> events = [];
}