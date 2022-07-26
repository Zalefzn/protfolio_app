import 'package:flutter/material.dart';
import 'package:protfolio_app/utilities/screenSize/sizeScreen.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    Widget pictData() {
      return Stack(children: [
        Container(
          margin: EdgeInsets.only(
              top: SizeConfig.blockVertical * 8,
              left: SizeConfig.blockHorizontal * 10),
          height: SizeConfig.blockVertical * 48,
          width: SizeConfig.blockHorizontal * 80,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  opacity: 0.6,
                  image: AssetImage('assets/post1.png')),
              color: Colors.black,
              borderRadius: BorderRadius.circular(30)),
        ),
      ]);
    }

    return Scaffold(
      body: Column(children: [
        pictData(),
      ]),
    );
  }
}
