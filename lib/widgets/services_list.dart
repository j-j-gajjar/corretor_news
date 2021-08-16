import 'package:corretor_news/pages/tabs/onboarding/onboarding_taxas.dart';
import 'package:corretor_news/widgets/services_card.dart';
import 'package:flutter/material.dart';

import 'card_conteudo.dart';

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
          ServicesCard(pngSrc: ("assets/logo/bitrix24.png"), press: () {}
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
            pngSrc: ("assets/logo/bling.png"),
            press: () {},
          ),
          ServicesCard(
            pngSrc: ("assets/logo/leadlovers.png"),
            press: () {},
          ),
          ServicesCard(
              pngSrc: ("assets/logo/mlabs.png"),
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
          // CardConteudo(
          //     overtitle: 'FERRAMENTAS',
          //     title: 'CRM',
          //     subtitle: 'CONHEÇA ESSA FERRAMENTA',
          //     icon: Icons.ac_unit,
          //     color1: Color(0xFFCA1919).withOpacity(0.8),
          //     color2: Color(0xFFC14545).withOpacity(1),
          //     onPressed: () {}),
          ServicesCardS(pngSrc: ("assets/logo/bitrix24.png"), press: () {}
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
            pngSrc: ("assets/logo/bling.png"),
            press: () {},
          ),
          ServicesCardS(
            pngSrc: ("assets/logo/leadlovers.png"),
            press: () {},
          ),
          ServicesCardS(pngSrc: ("assets/logo/mlabs.png"), press: () {}
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
