class Challenge {

  Challenge( {
    this.title = ' ',
    this.imagePath=' ',
    this.challengeCount = 0,

});

  String title;
  int challengeCount;
  String imagePath;

  static List<Challenge> challengeList = <Challenge> [

    Challenge(
      imagePath: 'assets/Image/angry.png',
        title: 'Personal',
      challengeCount: 10,

    ),

    Challenge(
      imagePath: 'assets/Image/angry.png',
      title: 'Time Management',
      challengeCount: 16,
    ),

    Challenge(
      imagePath: 'assets/Image/angry.png',
      title: 'Time Management',
      challengeCount: 15,
    ),
  ];
}