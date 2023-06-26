import 'package:flutter/material.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/homenav.dart';
import 'package:fyp_healinic_app/hotline/hotline_list_data.dart';
import 'package:fyp_healinic_app/hotline/hotline_list_view.dart';

class HotlineScreen extends StatefulWidget {
  const HotlineScreen({Key? key, this.animationController}) : super(key: key);
  final AnimationController? animationController;

  @override
  _HotlineScreenState createState() => _HotlineScreenState();
}

class _HotlineScreenState extends State<HotlineScreen>
    with TickerProviderStateMixin {
  AnimationController? animationController;
  List<HotlineListData> hotlineList = HotlineListData.hotlinelist;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    animationController = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    super.initState();
  }

  Future<bool> getData() async {
    await Future<dynamic>.delayed(const Duration(milliseconds: 200));
    return true;
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HealinicTheme.mainTheme,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: <Widget>[
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Column(
                children: <Widget>[
                  getAppBar(),
                  getLogo(),
                  getWord(),
                  Expanded(
                      child: NestedScrollView(
                    controller: _scrollController,
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return <Widget>[
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                              (BuildContext context, int index) {},
                              childCount: 1),
                        ),
                      ];
                    },
                    body: Container(
                      child: ListView.builder(
                          itemCount: hotlineList.length,
                          padding: const EdgeInsets.only(top: 8),
                          scrollDirection: Axis.vertical,
                          itemBuilder: (BuildContext context, int index) {
                            final int count = hotlineList.length > 10
                                ? 10
                                : hotlineList.length;
                            final Animation<double> animation =
                                Tween<double>(begin: 0.0, end: 1.0).animate(
                                    CurvedAnimation(
                                        parent: animationController!,
                                        curve: Interval(
                                            (1 / count) * index, 1.0,
                                            curve: Curves.fastOutSlowIn)));
                            animationController?.forward();
                            return HotlineListView(
                              callback: () {},
                              hotlineData: hotlineList[index],
                              animation: animation,
                              animationController: animationController!,
                            );
                          }),
                    ),
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getAppBar() {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0)),
        color: HealinicTheme.nearlyWhite,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              offset: const Offset(0, 2),
              blurRadius: 8.0),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
            top: MediaQuery.of(context).padding.top, left: 8, right: 8),
        child: Row(
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(32.0),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  'Hotline',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22,
                  ),
                ),
              ),
            ),
            Container(
              width: AppBar().preferredSize.height + 40,
              height: AppBar().preferredSize.height,
            )
          ],
        ),
      ),
    );
  }

  Widget getLogo() {
    return Container(
      color: Colors.transparent,
      child: Padding(
          padding: EdgeInsets.only(top: 5, left: 80, right: 80),
          child: Column(children: <Widget>[
            Image.asset(
              'assets/Image/Healinic.png',
              height: 69,
              width: 250,
            ),
            SizedBox(
              height: 5,
            ),
          ])),
    );
  }

  Widget getWord() {
    return Container(
      color: Colors.transparent,
      child: Padding(
        padding: EdgeInsets.only(top: 10),
        child: Container(
          color: HealinicTheme.registrationButton.withOpacity(0.5),
          padding: EdgeInsets.all(10),
          child: Table(
            border: TableBorder.all(color: Colors.transparent),
            children: [
              TableRow(children: [
                Text('YOU DO NOT HAVE TO FIGHT THIS ALONE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: HealinicTheme.fontName,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: HealinicTheme.titleWord,
                    )),
              ]),
              TableRow(children: [
                Text('Reach out for help. Give yourself the gift of recovery.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: HealinicTheme.fontName,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: HealinicTheme.titleWord,
                    )),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
