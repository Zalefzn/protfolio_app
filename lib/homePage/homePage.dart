import 'package:flutter/material.dart';
import 'package:protfolio_app/utilities/screenSize/sizeScreen.dart';
import 'package:protfolio_app/utilities/theme/theme.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

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
                        image: AssetImage('assets/pict.jpg'),
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
                    onTap: () {},
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
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(
                    top: SizeConfig.blockVertical * 5,
                    left: SizeConfig.blockHorizontal * 5),
                height: SizeConfig.blockVertical * 6,
                width: SizeConfig.blockHorizontal * 15,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/youtube.png')),
                ),
              ),
            ),
            contentBottom()
          ],
        ));
  }
}
