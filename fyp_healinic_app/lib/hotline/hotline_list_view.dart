import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:fyp_healinic_app/app_theme.dart';
import 'package:fyp_healinic_app/hotline/hotline_list_data.dart';
import 'package:url_launcher/url_launcher.dart';

class HotlineListView extends StatelessWidget {
  const HotlineListView(
      {Key? key,
      this.hotlineData,
      this.animationController,
      this.animation,
      this.callback})
      : super(key: key);
  final VoidCallback? callback;
  final HotlineListData? hotlineData;
  final AnimationController? animationController;
  final Animation<double>? animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animationController!,
        builder: (BuildContext context, Widget? child) {
          return FadeTransition(
              opacity: animation!,
              child: Transform(
                transform: Matrix4.translationValues(
                    0.0, 50 * (1.0 - animation!.value), 0.0),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 30, right: 30, top: 10, bottom: 16),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: callback,
                    child: Container(
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5.0)),
                        ),
                        child: Column(
                          children: <Widget>[
                            Text(
                              hotlineData!.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w800,
                                fontFamily: HealinicTheme.fontName,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              hotlineData!.caption,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Table(
                                border:
                                    TableBorder.all(color: Colors.transparent),
                                columnWidths: {
                                  ////Size of each column of the table
                                  0: FlexColumnWidth(4),
                                  1: FlexColumnWidth(15),
                                },
                                children: [
                                  TableRow(children: [
                                    Text(
                                      'Email     : ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      hotlineData!.email,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Text(
                                      'Website :',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      hotlineData!.website,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ]),
                                  TableRow(children: [
                                    Text(
                                      'Hotline   :',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      hotlineData!.number,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            TextButton(
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 20, vertical: 2),
                                    shape: RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.blue),
                                    )),
                                child: Text(
                                  'Call',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                onPressed: () async {
                                  await FlutterPhoneDirectCaller.callNumber(
                                      hotlineData!.number);
                                })
                          ],
                        )),
                  ),
                ),
              ));
        });
  }
}
