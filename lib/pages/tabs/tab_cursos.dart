import 'package:corretor_news/components/section_title.dart';
import 'package:corretor_news/theme/app_texts.dart';
import 'package:corretor_news/widgets/card_conteudo.dart';
import 'package:corretor_news/widgets/discount_card.dart';
import 'package:corretor_news/widgets/services_list.dart';
import 'package:flutter/material.dart';

import 'onboarding/onboarding_page.dart';
import 'onboarding/onboarding_taxas.dart';

class TabCursos extends StatelessWidget {
  void goToOnBoarding(context) => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => OnBoardingPage()),
      );
  void goToOnTaxa(context) => Navigator.of(context).push(
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

          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 28, top: 40),
            child: Text(
              "Saiba mais..",
              style: textTheme.headline4,
            ),
          ),
          // ListConteudo(),

          // CategoryList(),

          // SingleChildScrollView(
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //     children: [
          //       CardConteudo(
          //           overtitle: 'MARKETING DIGITAL',
          //           title: 'E-MAIL MARKETING',
          //           subtitle: 'VOCÊ SABE O QUE É?',
          //           icon: Icons.ac_unit,
          //           color1: Color(0xFF151575).withOpacity(0.8),
          //           color2: Color(0xFF151575).withOpacity(1),
          //           onPressed: () => goToOnTaxa(context)),
          //     ],
          //   ),
          // ),
          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 28, top: 40),
            child: Text(
              "Cursos",
              style: textTheme.headline4,
            ),
          ),

          SizedBox(height: 30),

          CardConteudo(
              overtitle: 'FERRAMENTAS',
              title: 'CRM',
              subtitle: 'CONHEÇA ESSA FERRAMENTA',
              icon: Icons.ac_unit,
              color1: Color(0xFFCA1919).withOpacity(0.8),
              color2: Color(0xFFC14545).withOpacity(1),
              onPressed: () => goToOnTaxa(context)),
          SizedBox(height: 40),
          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 28, top: 40),
            child: Text(
              "Saiba mais..",
              style: textTheme.headline4,
            ),
          ),
          // ListConteudo(),

          Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: 3,
            width: 22,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
          ),

          CardConteudo(
              overtitle: 'MARKETING DIGITAL',
              title: 'E-MAIL MARKETING',
              subtitle: 'VOCÊ SABE O QUE É?',
              icon: Icons.ac_unit,
              color1: Color(0xFF151575).withOpacity(0.8),
              color2: Color(0xFF151575).withOpacity(1),
              onPressed: () => goToOnTaxa(context)),
          // ListConteudo(),

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
