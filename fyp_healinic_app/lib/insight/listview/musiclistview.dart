import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';

class MusicApp extends StatefulWidget {
  const MusicApp({Key? key}) : super(key: key);

  @override
  _MusicAppState createState() => _MusicAppState();
}

class _MusicAppState extends State<MusicApp> {
  List musicList = [
    {
      "title": "Valley Sunset",
      "artist": "Ahjay Stelino",
      "cover":
      "https://purewows3.imgix.net/images/articles/2020_03/calming-pictures-cat.jpg?auto=format,compress&cs=strip",
      "url":
      "https://assets.mixkit.co/music/preview/mixkit-valley-sunset-127.mp3",
    },
    {
      "title": "Piano Reflection",
      "artist": "Ahjay Stelino",
      "cover":
      "https://images.unsplash.com/photo-1602785164803-9a6cf611f3b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FsbWluZ3xlbnwwfHwwfHw%3D&w=1000&q=80",
      "url":
      "https://assets.mixkit.co/music/preview/mixkit-piano-reflections-22.mp3",
    },

    {
      "title": "Relax Beat",
      "artist": "Ahjay Stelino",
      "cover":
          "https://www.wallartprints.com.au/blog/wp-content/uploads/2019/12/zen-pictures-flutter-201272525.jpg",
      "url":
          "https://assets.mixkit.co/music/preview/mixkit-relax-beat-292.mp3",
    },
    {
      "title": "Nature Meditation",
      "artist": "Alejandro Magaña",
      "cover":
          "https://cff2.earth.com/uploads/2017/09/31200356/Nature-imagery-has-a-calming-effects-on-prisoners.jpg",
      "url": "https://assets.mixkit.co/music/preview/mixkit-nature-meditation-345.mp3",
    },
    {
      "title": "Just Relax",
      "artist": "LesFm",
      "cover":
          "https://hopegrows.net/wp-content/uploads/2020/07/Calming-Influence-Of-Nature.jpg",
      "url": "https://cdn.pixabay.com/download/audio/2021/11/23/audio_64b2dd1bce.mp3?filename=just-relax-11157.mp3",
    },
    {
      "title": "Calming in the sun",
      "artist": "Alex MakeMusic",
      "cover":
          "https://streamingwords.com/wp-content/uploads/2020/06/most-beautiful-calming-images.jpg",
      "url":
          "https://cdn.pixabay.com/download/audio/2021/11/24/audio_ff7f56c397.mp3?filename=calming-in-the-sun-11173.mp3",
    },

    {
      "title": "GoodBye Stress | Calming accoustic guitar instrument ",
      "artist": "LesFm",
      "cover":
          "https://thesuperyachtlife.com/wp-content/uploads/2020/04/Blue-mind-1.jpg",
      "url":
          "https://cdn.pixabay.com/download/audio/2021/07/27/audio_fedf8949d8.mp3?filename=goodbye-stress-calming-acoustic-guitar-instrumental-background-music-for-videos-5714.mp3",
    },
    {
      "title": "Ambient and Soothing Piano Chill Out Music",
      "artist": "Julius H",
      "cover":
          "https://nutritiouslife.com/wp-content/uploads/2016/12/calming-meditation-1.jpg",
      "url": "https://cdn.pixabay.com/download/audio/2021/09/29/audio_e816f9a691.mp3?filename=ambient-and-soothing-piano-chill-out-music-in-d-major-for-relaxation-8851.mp3",
    },
    {
      "title": "Upbeat and Inspiring",
      "artist": "LesFm",
      "cover":
          "https://www.wallartprints.com.au/blog/wp-content/uploads/2019/12/zen-pictures-flutter-201272525.jpg",
      "url": "https://soundcloud.com/meditation-music/star-woman?utm_source=clipboard&utm_medium=text&utm_campaign=social_sharing",
    },
    {
      "title": "Feeling Happy",
      "artist": "Ahjay Stelino",
      "cover":
      "https://64.media.tumblr.com/37db86cf9183ca033676f6f16448e84c/tumblr_pni7mas6JT1sc6noc_1280.jpg",
      "url":
      "https://assets.mixkit.co/music/preview/mixkit-feeling-happy-5.mp3",
    },
    {
      "title": "Upbeat Pop 05",
      "artist": "Grigoriy Nuzhny",
      "cover":
      "https://data.whicdn.com/images/346067010/original.jpg",
      "url":
      "https://assets.mixkit.co/music/preview/mixkit-pop-05-695.mp3",
    },
    {
      "title": "Delightful",
      "artist": "Ahjay Stelino",
      "cover":
      "https://streamingwords.com/wp-content/uploads/2020/06/most-beautiful-calming-images.jpg",
      "url":
      "https://assets.mixkit.co/music/preview/mixkit-delightful-4.mp3",
    },

  ];

  String currentTitle = "";
  String currentArtist = "";
  String currentCover = "";
  String currentSong = "";
  IconData btnIcon = Icons.play_arrow;

  AudioPlayer _audioPlayer = AudioPlayer(mode: PlayerMode.MEDIA_PLAYER);
  bool isPlaying = false;
  Duration musicDuration = Duration();
  Duration musicPosition = Duration();

  playMusic(String url) async {
    if (isPlaying && currentSong != url) {
      _audioPlayer.pause();
      int result = await _audioPlayer.play(url);
      if (result == 1) {
        setState(() {
          currentSong = url;
        });
      }
    } else if (!isPlaying) {
      int result = await _audioPlayer.play(url);
      if (result == 1) {
        setState(() {
          isPlaying = true;
          btnIcon = Icons.pause;
        });
      }
    }

    _audioPlayer.onDurationChanged.listen((event) {
      setState(() {
        musicDuration = event;
      });
    });

    _audioPlayer.onAudioPositionChanged.listen((event) {
      setState(() {
        musicPosition = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HealinicTheme.mainTheme,
      appBar: AppBar(

        centerTitle: true,
        title: Text(
          'Calming and Upbeat Audio for You',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
        ),
        elevation: 0,
        backgroundColor: HealinicTheme.nearlyWhite,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.black,
          ),
        ),
      ),

      body: Container(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: musicList.length,
                    itemBuilder: (context, index) => InkWell(
                      onTap: () {
                        playMusic(musicList[index]["url"]);
                        setState(() {
                          currentTitle = musicList[index]["title"];
                          currentArtist = musicList[index]["artist"];
                          currentCover = musicList[index]["cover"];
                        });
                      },
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(
                            musicList[index]["cover"],
                          ),
                        ),
                        title: Text(
                          musicList[index]["title"],
                          style: TextStyle(
                            color: Colors.black,
                              fontFamily: HealinicTheme.fontName
                          ),
                        ),
                        subtitle: Text(
                          musicList[index]["artist"],
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        trailing: Container(
                          margin: EdgeInsets.all(17.0),
                          child: Icon(
                            Icons.music_note,
                            color: Colors.blueGrey.shade200,
                          ),
                        ),
                      ),
                    ),

                  ),
                ),
              ),
              Container(
                color: HealinicTheme.buttonBgb,
                child: Column(
                  children: [
                    Container(
                      color: HealinicTheme.buttonBgb,
                      height: 1.0,
                    ),
                    ListTile(

                      title: Text(
                        currentTitle,
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          fontFamily: HealinicTheme.fontName
                        ),
                      ),
                      subtitle: Text(
                        currentArtist,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      trailing: Container(
                        height: 40.0,
                        width: 40.0,
                        margin: EdgeInsets.all(7.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white,
                          ),
                        ),
                        child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {
                            if (isPlaying) {
                              _audioPlayer.pause();
                              setState(() {
                                btnIcon = Icons.play_arrow;
                                isPlaying = false;
                              });
                            } else {
                              _audioPlayer.resume();

                              setState(() {
                                btnIcon = Icons.pause;
                                isPlaying = true;
                              });
                            }
                          },
                          icon: Icon(
                            btnIcon,
                            size: 26,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 22.0,
                        right: 30.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "${musicPosition.inMinutes}:${musicPosition.inSeconds.remainder(60)}",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Expanded(
                            child: Slider.adaptive(
                              activeColor: Colors.white,
                              inactiveColor: Colors.grey,
                              value: musicPosition.inSeconds.toDouble(),
                              max: musicDuration.inSeconds.toDouble(),
                              onChanged: (val) {},
                            ),
                          ),
                          Text(
                            "${musicDuration.inMinutes}:${musicDuration.inSeconds.remainder(60)}",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
