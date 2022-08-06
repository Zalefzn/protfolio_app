import 'package:flutter/material.dart';
import 'package:protfolio_app/utilities/screenSize/sizeScreen.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class DetailPage extends StatefulWidget {
  final String image;
  final String judul;
  final String subJudul;
  final String desc;
  final String rate;
  DetailPage(this.image, this.judul, this.subJudul, this.desc, this.rate,
      {Key? key})
      : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPage();
}

class _DetailPage extends State<DetailPage> {
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

    Widget pictData() {
      return Stack(children: [
        Container(
          margin: EdgeInsets.only(
              top: SizeConfig.blockVertical * 8,
              left: SizeConfig.blockHorizontal * 5),
          height: SizeConfig.blockVertical * 55,
          width: SizeConfig.blockHorizontal * 90,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  opacity: 0.6,
                  image: AssetImage(widget.image)),
              color: Colors.black,
              borderRadius: BorderRadius.circular(30)),
        ),
        Container(
          margin: EdgeInsets.only(
              top: SizeConfig.blockVertical * 55,
              left: SizeConfig.blockHorizontal * 12.5),
          height: SizeConfig.blockVertical * 50,
          width: SizeConfig.blockHorizontal * 75,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: SizeConfig.blockVertical * 3),
                child: Text(widget.judul,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800,
                    )),
              ),
              Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.blockVertical * 5,
                      right: SizeConfig.blockHorizontal * 45),
                  child: Text(widget.subJudul,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ))),
              Container(
                  margin: EdgeInsets.only(
                      top: SizeConfig.blockVertical * 2,
                      right: SizeConfig.blockHorizontal * 20,
                      left: SizeConfig.blockHorizontal * 4),
                  child: Text(widget.desc,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ))),
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(30)),
        ),
        Container(
          margin: EdgeInsets.only(
              top: SizeConfig.blockVertical * 11,
              left: SizeConfig.blockHorizontal * 61),
          height: SizeConfig.blockVertical * 6,
          width: SizeConfig.blockHorizontal * 28,
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.star, color: Colors.yellow),
              Text(widget.rate,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ]);
    }

    Widget buttonContact() {
      return Container(
          margin: EdgeInsets.only(
            left: SizeConfig.blockHorizontal * 1,
            bottom: SizeConfig.blockVertical * 2,
          ),
          height: SizeConfig.blockVertical * 7,
          width: SizeConfig.blockHorizontal * 73,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.amber[400]),
          child: Center(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    launchURL(
                        'https://api.whatsapp.com/send?phone=5511996983024&app=facebook&entry_point=page_cta&fbclid=IwAR1KlwZ8L0yk_M57mUIoSEql0t76X-GqBih8ASNtxMabzFVQ55ThtkS3KNs');
                  });
                },
                child: const Text('Contact Me',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w700))),
          ));
    }

    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          pictData(),
          SizedBox(height: SizeConfig.blockVertical * 3),
          buttonContact(),
        ]),
      ),
    );
  }
}
