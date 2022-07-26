import 'package:flutter/material.dart';
import 'package:protfolio_app/detailPage/detailPage.dart';
import 'package:protfolio_app/protofolio_card/protofolio_card.dart';
import 'package:protfolio_app/utilities/screenSize/sizeScreen.dart';

class Protofolio extends StatefulWidget {
  const Protofolio({Key? key}) : super(key: key);

  @override
  State<Protofolio> createState() => _Protofolio();
}

class _Protofolio extends State<Protofolio> {
  Widget headersContent() {
    return Container(
      margin: EdgeInsets.only(
          top: SizeConfig.blockVertical * 14,
          left: SizeConfig.blockHorizontal * 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Discovery',
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(height: SizeConfig.blockVertical * 0.1),
          Text('My Protfolio',
              style: TextStyle(
                color: Colors.grey[300],
                fontSize: 18,
                fontWeight: FontWeight.w500,
              )),
        ],
      ),
    );
  }

  Widget pictData() {
    return SingleChildScrollView(
      child: Container(
        height: SizeConfig.blockVertical * 70,
        width: SizeConfig.blockHorizontal * 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const DetailPage()));
                });
              },
              child: CardProto('assets/post1.png', '4.8',
                  'explore what you want\nto see in this page'),
            ),
            CardProto('assets/post2.png', '4.5',
                'explore what you want\nto see in this page'),
            CardProto('assets/post3.png', '4.4',
                'explore what you want\nto see in this page'),
            CardProto('assets/post10.png', '4.7',
                'explore what you want\nto see in this page'),
            CardProto('assets/post5.png', '4.6',
                'explore what you want\nto see in this page'),
            CardProto('assets/post6.png', '4.4',
                'explore what you want\nto see in this page'),
            CardProto('assets/post11.png', '4.5',
                'explore what you want\nto see in this page'),
            CardProto('assets/post7.png', '4.7',
                'explore what you want\nto see in this page'),
            CardProto('assets/post4.png', '4.3',
                'explore what you want\nto see in this page')
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        headersContent(),
        SizedBox(height: SizeConfig.blockVertical * 5),
        pictData(),
      ],
    ));
  }
}
