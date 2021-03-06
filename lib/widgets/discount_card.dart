import 'package:flutter/material.dart';

class CardWide extends StatelessWidget {
  const CardWide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // Text(
          //   "Offers & Discounts",
          //   style: TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
          // ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            width: double.infinity,
            // height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/researching.png'),
              ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF00002D).withOpacity(1),
                    Color(0xFF222265).withOpacity(0.7),
                  ],
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
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
                                  color: Colors.white.withOpacity(0.9)),
                              children: [
                                TextSpan(
                                  text: "OFERTA EXCLUSIVA",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9)),
                              children: [
                                TextSpan(
                                  text: "60% OFF",
                                  style: TextStyle(
                                    fontSize: 58,
                                    color: Colors.white60,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9)),
                              children: [
                                TextSpan(
                                  text:
                                      "Crie seu site agora mesmo! Apenas R\$200..",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.arrow_back_ios_new_rounded,
                          size: 40, color: Colors.white.withOpacity(0.3)),

                      // child: SvgPicture.asset("assets/icons/macdonalds.svg"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
