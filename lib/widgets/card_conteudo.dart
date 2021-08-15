import 'package:corretor_news/theme/app_texts.dart';
import 'package:flutter/material.dart';
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
                                      .copyWith(fontSize: 38),
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
                                  style: TextStyle(fontSize: 20),
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
                      child: Icon(
                        icon,
                        size: 180,
                        color: Colors.white.withOpacity(0.3),
                      ),
                      // Icon(Icons.monetization_on,
                      //     size: 220, color: Colors.white.withOpacity(0.3)),

                      // child: SvgPicture.asset("assets/icons/macdonalds.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
