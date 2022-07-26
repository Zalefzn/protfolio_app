import 'package:flutter/material.dart';
import 'package:protfolio_app/utilities/screenSize/sizeScreen.dart';
import 'package:protfolio_app/utilities/theme/theme.dart';

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
    return Row(
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 10),
              height: SizeConfig.blockVertical * 60,
              width: SizeConfig.blockHorizontal * 80,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      opacity: 0.7,
                      fit: BoxFit.cover,
                      image: AssetImage('assets/post9.png')),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(50)),
            ),
            Container(
                margin: EdgeInsets.only(
                    left: SizeConfig.blockHorizontal * 59,
                    top: SizeConfig.blockVertical * 2),
                height: SizeConfig.blockVertical * 5,
                width: SizeConfig.blockHorizontal * 25,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(0.2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.star, color: Colors.yellow),
                    SizedBox(width: SizeConfig.blockHorizontal * 1),
                    const Text('4.8',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ))
                  ],
                )),
            Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.blockVertical * 55,
                    left: SizeConfig.blockHorizontal * 28),
                height: SizeConfig.blockVertical * 8,
                width: SizeConfig.blockHorizontal * 45,
                decoration: BoxDecoration(
                  color: Colors.amber[400],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: const Center(
                  child: Text('Explore',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700)),
                )),
          ],
        ),
      ],
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
