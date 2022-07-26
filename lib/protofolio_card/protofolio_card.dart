import 'package:flutter/material.dart';
import 'package:protfolio_app/utilities/screenSize/sizeScreen.dart';

class CardProto extends StatefulWidget {
  String image;
  String rateValue;
  String text;
  CardProto(this.image, this.rateValue, this.text, {Key? key})
      : super(key: key);

  @override
  State<CardProto> createState() => _CardProto();
}

class _CardProto extends State<CardProto> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: SizeConfig.blockHorizontal * 10),
          height: SizeConfig.blockVertical * 60,
          width: SizeConfig.blockHorizontal * 80,
          decoration: BoxDecoration(
              image: DecorationImage(
                  opacity: 0.6,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.image)),
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
                Text(widget.rateValue,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ))
              ],
            )),
        Container(
          margin: EdgeInsets.only(
              top: SizeConfig.blockVertical * 48,
              left: SizeConfig.blockHorizontal * 30),
          child: Text(widget.text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500)),
        ),
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
    );
  }
}
