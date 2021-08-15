import 'package:flutter/material.dart';

class CardCursos extends StatelessWidget {
  const CardCursos({
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
            width: double.infinity,
            // height: 166,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // image: DecorationImage(
              //   fit: BoxFit.fill,
              //   image: AssetImage('assets/png/hotels_bck2'),
              // ),
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF151575).withOpacity(0.8),
                    Color(0xFF151575).withOpacity(1),
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
                                  color: Colors.white.withOpacity(0.9)),
                              children: [
                                TextSpan(
                                  text: "IPCA, IGP-M, SELIC,...",
                                  style: TextStyle(
                                      fontSize: 16,
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
                                  text: "INDICADORES",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 24),
                          RichText(
                            text: TextSpan(
                              style: TextStyle(
                                  color: Colors.white.withOpacity(0.9)),
                              children: [
                                TextSpan(
                                  text:
                                      "Conheça os principais indicadores do mercado",
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
                      child: Icon(Icons.monetization_on,
                          size: 220, color: Colors.white.withOpacity(0.3)),

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

class CardCursos2 extends StatelessWidget {
  const CardCursos2({
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
          Card(
            elevation: 20,
            child: Container(
              width: double.infinity,
              // height: 166,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // image: DecorationImage(
                //   fit: BoxFit.fill,
                //   image: AssetImage('assets/png/hotels_bck2'),
                // ),
              ),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: Color(0xFFCE0000).withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10),
                  // gradient: RadialGradient(
                  //   colors: [
                  //     Color(0xFF151575).withOpacity(0.8),
                  //     Color(0xFF151575).withOpacity(1),
                  //   ],
                  // ),
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
                                    color: Colors.white.withOpacity(0.9)),
                                children: [
                                  TextSpan(
                                    text: "MARKETING DIGITAL",
                                    style: TextStyle(
                                        fontSize: 16,
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
                                    text: "TRÁFEGO PAGO",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 24),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.9)),
                                children: [
                                  TextSpan(
                                    text:
                                        "Anuncie seu imóveis através de anúncios pagos",
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
                        child: Icon(Icons.swipe_rounded,
                            size: 220, color: Colors.white.withOpacity(0.3)),

                        // child: SvgPicture.asset("assets/icons/macdonalds.svg"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
