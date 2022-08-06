import 'package:flutter/material.dart';
import 'package:protfolio_app/homePage/homePage.dart';
import 'package:protfolio_app/utilities/screenSize/sizeScreen.dart';
import 'package:protfolio_app/utilities/theme/theme.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  State<BannerPage> createState() => _BannerPage();
}

class _BannerPage extends State<BannerPage> {
  bool loading = false;
  bool changedColor = false;

  void initState() {
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        loading = true;
      });

      return loading = false;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: bColor2,
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  opacity: 0.5,
                  image: AssetImage('assets/post10.png'))),
        ),
        Container(
          margin: EdgeInsets.only(top: SizeConfig.blockVertical * 75),
          padding: EdgeInsets.only(left: SizeConfig.blockHorizontal * 17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'welcome,\nthis is my portfolio as a designer',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: textColor1,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: SizeConfig.blockVertical * 4),
              Container(
                height: SizeConfig.blockVertical * 6.5,
                width: SizeConfig.blockHorizontal * 70,
                decoration: BoxDecoration(
                    color: changedColor ? Colors.grey : buttonColor,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        loading
                            ? const CircularProgressIndicator()
                            : Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()),
                                (route) => false);
                      });
                    },
                    child: Text('Next',
                        style: TextStyle(
                            color: textColor1,
                            fontSize: 20,
                            fontWeight: FontWeight.w800))),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
