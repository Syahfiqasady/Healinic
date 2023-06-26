import 'package:flutter/cupertino.dart';
import 'package:fyp_healinic_app/diary/helpers/db_helper.dart';
import 'package:fyp_healinic_app/diary/helpers/mooddata.dart';
import 'package:fyp_healinic_app/diary/models/activity.dart';

class MoodCard extends ChangeNotifier {
  String datetime;
  String mood;
  List<String> activityname = [];
  List<String> activityimage = [];
  String image;
  String actimage;
  String actname;
  MoodCard({required this.actimage, required this.actname, required this.datetime, required this.image, required this.mood, required this.items, required this.date});
  List items;
  List<MoodData> data=[];
  String date;
  bool isloading=false;
  List<String> actiname=[];


  void add(Activity act) {
    activityimage.add(act.image);
    activityname.add(act.name);
    notifyListeners();
  }


  Future<void> addPlace(
      String datetime,
      String mood,
      String image,
      String actimage,
      String actname,
      String date
      ) async {
    DBHelper.insert('user_moods', {
      'datetime': datetime,
      'mood': mood,
      'image': image,
      'actimage': actimage,
      'actname': actname,
      'date':date
    });
    notifyListeners();
  }

  Future<void> deletePlaces(String datetime) async {
    DBHelper.delete(datetime);
    notifyListeners();
  }
}
