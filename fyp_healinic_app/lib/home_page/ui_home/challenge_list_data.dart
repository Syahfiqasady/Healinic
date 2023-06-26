class ChallengeListData {
  ChallengeListData({
    this.imagePath = ' ',
    this.titleTxt = ' ',
    this.subTxt = ' ',
  });

  String imagePath;
  String titleTxt;
  String subTxt;

  static List<ChallengeListData> challengelist = <ChallengeListData>[
    ChallengeListData(
      titleTxt: 'ANXIETY',
    ),
    ChallengeListData(
      titleTxt: 'STRESS',
    ),
    ChallengeListData(
      titleTxt: 'DEPRESSION',
    ),
  ];
}
