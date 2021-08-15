import 'package:corretor_news/pages/tabs/onboarding/onboarding_taxas.dart';
import 'package:corretor_news/widgets/services_card.dart';
import 'package:flutter/material.dart';

class ServicesList extends StatelessWidget {
  const ServicesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ServicesCard(pngSrc: ("assets/logos/bitrix24.png"), press: () {}
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) {
              //         return DetailsScreen();
              //       },
              //     ),
              //   );
              // },
              ),
          ServicesCard(
            pngSrc: ("assets/logos/bling.png"),
            press: () {},
          ),
          ServicesCard(
            pngSrc: ("assets/logos/leadlovers.png"),
            press: () {},
          ),
          ServicesCard(
              pngSrc: ("assets/logos/mlabs.png"),
              // press: () {}
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => OnBoardingTaxa()),
                );
              }),
        ],
      ),
    );
  }
}

class ServicesListS extends StatelessWidget {
  const ServicesListS({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ServicesCardS(pngSrc: ("assets/logos/bitrix24.png"), press: () {}
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) {
              //         return DetailsScreen();
              //       },
              //     ),
              //   );
              // },
              ),
          ServicesCardS(
            pngSrc: ("assets/logos/bling.png"),
            press: () {},
          ),
          ServicesCardS(
            pngSrc: ("assets/logos/leadlovers.png"),
            press: () {},
          ),
          ServicesCardS(pngSrc: ("assets/logos/mlabs.png"), press: () {}
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) {
              //         return DetailsScreen();
              //       },
              //     ),
              //   );
              // },
              ),
        ],
      ),
    );
  }
}
