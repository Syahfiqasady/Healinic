import 'package:flutter/cupertino.dart';

class MeditationSongData {
  MeditationSongData({
    this.songPath = ' ',
    this.titleTxt = ' ',
    this.caption = ' ',
  });

  String songPath, titleTxt, caption;

  static List<MeditationSongData> meditationList = <MeditationSongData>[
    MeditationSongData(
      titleTxt: ' ',
      caption: ' ',
      songPath: ' ',
    ),
  ];
}
