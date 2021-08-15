// import 'package:corretor_news/theme/app_texts.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class ServicesCard extends StatelessWidget {
  final String pngSrc;
  final Function press;
  const ServicesCard({
    Key? key,
    required this.pngSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This size provide you the total height and width of the screen
    // double c_width = MediaQuery.of(context).size.width * 0.8;

    // Size size = MediaQuery.of(context).size;
    return Container(
      width: 260,
      height: 260,
      margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: <Widget>[
                  Row(
                    children: [
                      Image(
                        image: AssetImage(pngSrc),
                        width: 180,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ServicesCardS extends StatelessWidget {
  final String pngSrc;
  final Function press;
  const ServicesCardS({
    Key? key,
    required this.pngSrc,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // This size provide you the total height and width of the screen
    // double c_width = MediaQuery.of(context).size.width * 0.8;

    // Size size = MediaQuery.of(context).size;
    return Container(
      width: 160,
      height: 160,
      margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 20,
            color: Color(0xFFB0CCE1).withOpacity(0.32),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: <Widget>[
                  Row(
                    children: [
                      Image(
                        image: AssetImage(pngSrc),
                        width: 80,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
