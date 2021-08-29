import 'package:corretor_news/pages/tabs/info_screen.dart';
import 'package:corretor_news/pages/tabs/onboarding/onboarding_taxas.dart';
import 'package:corretor_news/widgets/services_card.dart';
import 'package:flutter/material.dart';

class ServicesList extends StatelessWidget {
  void goToServiceDetails(context) => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => InfoScreen()),
      );
  const ServicesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CardServicesLogo(pngSrc: ("assets/logo/logo.png"), press: () {}),
          CardServicesLogo(pngSrc: ("assets/logo/acampaing.png"), press: () {}),
          CardServicesLogo(
              pngSrc: ("assets/logo/docusign.png"),
              press: () => goToServiceDetails(context)),
          CardServicesLogo(
            pngSrc: ("assets/logo/bling.png"),
            press: () {},
          ),
          CardServicesLogo(
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
