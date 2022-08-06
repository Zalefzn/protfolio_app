import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:protfolio_app/protofolio/protofolio.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;
import 'package:protfolio_app/utilities/screenSize/sizeScreen.dart';
import 'package:protfolio_app/utilities/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  void launchURL(String url) async {
    url = Uri.encodeFull(url);
    if (await launcher.canLaunchUrl(Uri.parse(url))) {
      await launcher.launchUrl(Uri.parse(url));
    } else {
      throw 'Unknown error, can\'t launch the URL.';
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    //bottom content
    Widget buttomContent() {
      return Row(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                launchURL('https://www.instagram.com/zale_st/');
              });
            },
            child: Container(
              margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 3),
              height: SizeConfig.blockVertical * 5,
              width: SizeConfig.blockHorizontal * 10,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/instagram.png'))),
            ),
          ),
          SizedBox(width: SizeConfig.blockHorizontal * 2),
          GestureDetector(
            onTap: () {
              setState(() {
                launchURL('https://www.facebook.com/st.zale');
              });
            },
            child: Container(
              height: SizeConfig.blockVertical * 5,
              width: SizeConfig.blockHorizontal * 10,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/facebook.png'))),
            ),
          ),
          SizedBox(width: SizeConfig.blockHorizontal * 2),
          GestureDetector(
            onTap: () {
              setState(() {
                launchURL('https://www.behance.net/zale-st');
              });
            },
            child: Container(
              height: SizeConfig.blockVertical * 5,
              width: SizeConfig.blockHorizontal * 10,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('assets/twitter.png'))),
            ),
          ),
          SizedBox(width: SizeConfig.blockHorizontal * 23),
          Container(
            height: SizeConfig.blockVertical * 4,
            width: SizeConfig.blockHorizontal * 35,
            decoration: BoxDecoration(
                color: buttonColor, borderRadius: BorderRadius.circular(30)),
            child: TextButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Protofolio()),
                        (route) => false);
                  });
                },
                child: const Text(' View Protfolio  >',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w600))),
          )
        ],
      );
    }

    //middle content
    Widget middleContent() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Description :',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              )),
          SizedBox(height: SizeConfig.blockVertical * 2),
          Text(
              'I always knew that I belonged to the Rosa family,\non my fathers side, although this surname, curiously, has become\nlost from my grandfathers generation.The Rosa family originated in\nEurope Portugal and Spain The intention was to rescue the familys\nsurname and use it on my brand. Looking for something strong and\nmore masculine, that would represent me, I found some interesting\nones: Ross, Roz, Rosetta and ZALE, which caught my attention.',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 11,
                fontWeight: FontWeight.w400,
              )),
        ],
      );
    }

    //headers
    Widget headersModelSheet() {
      return Column(
        children: [
          SizedBox(
            height: SizeConfig.blockVertical * 5,
          ),
          Container(
            height: SizeConfig.blockVertical * 1.5,
            width: SizeConfig.blockHorizontal * 27,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
          ),
          SizedBox(
            height: SizeConfig.blockVertical * 3,
          ),
          const Text('Victor de Paula',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              )),
          SizedBox(
            height: SizeConfig.blockVertical * 1,
          ),
          Text('CEO of Zalecreative',
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 13,
                fontWeight: FontWeight.w400,
              )),
        ],
      );
    }

    Widget contentBottom() {
      return Container(
          margin: EdgeInsets.only(
              top: SizeConfig.blockVertical * 80,
              left: SizeConfig.blockHorizontal * 5),
          height: SizeConfig.blockVertical * 15,
          width: SizeConfig.blockHorizontal * 90,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 2),
                height: SizeConfig.blockVertical * 13,
                width: SizeConfig.blockHorizontal * 25,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/pict2.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(50)),
              ),
              SizedBox(
                width: SizeConfig.blockHorizontal * 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Victor de Paula',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800)),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          barrierColor: Colors.black.withOpacity(0.1),
                          backgroundColor: Colors.black.withOpacity(0.6),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(70),
                              topRight: Radius.circular(70),
                            ),
                          ),
                          isScrollControlled: true,
                          enableDrag: true,
                          context: context,
                          builder: (context) {
                            return BackdropFilter(
                              filter:
                                  ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                              child: Container(
                                height: SizeConfig.blockVertical * 60,
                                decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(70),
                                        topRight: Radius.circular(70))),
                                child: Column(
                                  children: [
                                    headersModelSheet(),
                                    SizedBox(
                                        height: SizeConfig.blockVertical * 4),
                                    middleContent(),
                                    SizedBox(
                                        height: SizeConfig.blockVertical * 14),
                                    buttomContent(),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Text('Read More',
                        style: TextStyle(
                            color: Colors.amber[400],
                            fontSize: 14,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              )
            ],
          ));
    }

    return Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            Container(
              height: SizeConfig.blockVertical * 100,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      opacity: 0.5,
                      image: AssetImage('assets/pict.jpg'),
                      fit: BoxFit.cover)),
            ),
            contentBottom()
          ],
        ));
  }
}
