import 'package:corretor_news/theme/app_texts.dart';
import 'package:corretor_news/widgets/card_cursos.dart';
import 'package:corretor_news/widgets/discount_card.dart';
// import 'package:corretor_news/widgets/item_list.dart';
import 'package:corretor_news/widgets/services_list.dart';
import 'package:flutter/material.dart';

import 'onboarding/onboarding_page.dart';
import 'onboarding/onboarding_taxas.dart';

class TabCursos extends StatelessWidget {
  void goToOnBoarding(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );
  void goToOnTaxa(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => OnBoardingTaxa()),
      );
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // SearchBox(
          //   onChanged: (value) {},
          // ),
          // CategoryList(),
          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 4, top: 40),
            child: Text(
              "Ofertas",
              // style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),

              style: textTheme.headline4,
            ),
          ),
          CardWide(),

          ElevatedButton(
            child: Text('Ver mais'),
            onPressed: () => goToOnBoarding(context),
          ),
          ElevatedButton(
            child: Text('TAXAS'),
            onPressed: () => goToOnTaxa(context),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 28, top: 40),
            child: Text(
              "Cursos",
              style: textTheme.headline4,
            ),
          ),

          // CategoryList(),

          CardCursos(),
          SizedBox(height: 50),
          CardCursos2(),

          Padding(
              padding: const EdgeInsets.only(
                  left: 32, right: 32, bottom: 28, top: 40),
              child: Text(
                "Ferramentas e Serviços",
                style: textTheme.headline4,
              )),

          // CategoryList(),
          // DiscountCardView(),

          ServicesListS(),
        ],
      ),
    );
  }
}
