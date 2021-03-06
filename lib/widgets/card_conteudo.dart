import 'package:corretor_news/theme/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class CardConteudo extends StatelessWidget {
  final String overtitle, title, subtitle;
  final IconData icon;
  final VoidCallback onPressed;
  final Color color1;
  final Color color2;

  const CardConteudo({
    Key? key,
    required this.overtitle,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onPressed,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: <Widget>[
              // Text(
              //   "Offers & Discounts",
              //   style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
              // ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      color1,
                      color1,
                    ],
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6)),
                                children: [
                                  TextSpan(
                                    text: overtitle,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.5),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9)),
                                children: [
                                  TextSpan(
                                    text: title,
                                    style: textTheme.headline3!
                                        .copyWith(fontSize: 36),
                                    // TextStyle(
                                    //   fontSize: 40,
                                    //   fontWeight: FontWeight.bold,
                                    // ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9)),
                                children: [
                                  TextSpan(
                                    text: subtitle,
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: 1.3),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 24),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Icon(
                            icon,
                            size: 200,
                            color: Colors.white.withOpacity(0.3),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWideIcon extends StatelessWidget {
  final String overtitle, title, subtitle;
  final IconData icon;
  final VoidCallback onPressed;
  final Color color1;
  final Color color2;

  const CardWideIcon({
    Key? key,
    required this.overtitle,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onPressed,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: <Widget>[
              // Text(
              //   "Offers & Discounts",
              //   style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
              // ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      color1,
                      color1,
                    ],
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 32),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6)),
                                children: [
                                  TextSpan(
                                    text: overtitle,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.5),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 6),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9)),
                                children: [
                                  TextSpan(
                                    text: title,
                                    style: textTheme.headline3!
                                        .copyWith(fontSize: 40),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9)),
                                children: [
                                  TextSpan(
                                    text: subtitle,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.8,
                                        height: 1.2),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: FaIcon(
                            icon,
                            size: 120,
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardWideLottie extends StatelessWidget {
  final String overtitle, title, subtitle;
  final IconData icon;
  final VoidCallback onPressed;
  final Color color1;
  final Color color2;

  const CardWideLottie({
    Key? key,
    required this.overtitle,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onPressed,
    required this.color1,
    required this.color2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          elevation: 20,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: <Widget>[
              // Text(
              //   "Offers & Discounts",
              //   style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
              // ),
              DecoratedBox(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    colors: [
                      color1,
                      color1,
                    ],
                  ),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 32),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.6)),
                                children: [
                                  TextSpan(
                                    text: overtitle,
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 1.5),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 6),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9)),
                                children: [
                                  TextSpan(
                                    text: title,
                                    style: textTheme.headline3!
                                        .copyWith(fontSize: 40),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9)),
                                children: [
                                  TextSpan(
                                    text: subtitle,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: 1.8,
                                        height: 1.2),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 16),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: FaIcon(
                            icon,
                            size: 120,
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
