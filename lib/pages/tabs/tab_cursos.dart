import 'package:corretor_news/blog/app/screens/courses/courses_catalog.dart';
import 'package:corretor_news/pages/tabs/info_screen.dart';
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
  void goToCourseDetails(context) => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => CourseCatalog()),
      );

  void goToServiceDetails(context) => Navigator.of(context).push(
        MaterialPageRoute(builder: (_) => InfoScreen()),
      );

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 4, top: 40),
            child: Text(
              "Conteúdos",
              // style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),

              style: textTheme.headline4,
            ),
          ),
          SizedBox(height: 16),
          CardConteudo(
              overtitle: 'FERRAMENTAS',
              title: 'CURSOS',
              subtitle: 'CURSOS SELECIONADOS PARA VOCÊ',
              icon: Icons.ac_unit,
              color1: Color(0xFFCA1919).withOpacity(0.8),
              color2: Color(0xFFC14545).withOpacity(1),
              onPressed: () => goToCourseDetails(context)),
          // onPressed: () => goToOnTaxa(context)),
          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 4, top: 60),
            child: Text(
              "Ofertas",
              // style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),

              style: textTheme.headline5,
            ),
          ),
          CardWide(),

          // Padding(
          //   padding:
          //       const EdgeInsets.only(left: 32, right: 32, bottom: 28, top: 60),
          //   child: Text(
          //     "Saiba mais..",
          //     style: textTheme.headline4,
          //   ),
          // ),
          // // ListConteudo(),

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
          // Padding(
          //   padding:
          //       const EdgeInsets.only(left: 32, right: 32, bottom: 28, top: 40),
          //   child: Text(
          //     "Cursos",
          //     style: textTheme.headline4,
          //   ),
          // ),

          SizedBox(height: 40),
          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 24, top: 40),
            child: Text(
              "Marketing Digital",
              style: textTheme.headline5,
            ),
          ),
          // ListConteudo(),

          CardConteudo(
              overtitle: 'MARKETING DIGITAL',
              title: 'E-MAIL MARKETING',
              subtitle: 'SAIBA COMO UTILIZAR!',
              icon: Icons.ac_unit,
              color1: Color(0xFF151575).withOpacity(0.8),
              color2: Color(0xFF151575).withOpacity(1),
              onPressed: () => goToOnTaxa(context)),
          SizedBox(height: 40),

          CardConteudo(
              overtitle: 'MARKETING DIGITAL',
              title: 'CRM IMOBILIÁRIO',
              subtitle: 'VOCÊ PRECISA DE UM!',
              icon: Icons.ac_unit,
              color1: Color(0xFF136C92).withOpacity(0.8),
              color2: Color(0xFF151575).withOpacity(1),
              onPressed: () => goToServiceDetails(context)),
          // ListConteudo(),

          Padding(
              padding: const EdgeInsets.only(
                  left: 32, right: 32, bottom: 28, top: 60),
              child: Text(
                "Serviços\ne Ferramentas",
                style: textTheme.headline5,
              )),

          // CategoryList(),
          // DiscountCardView(),

          ServicesList(),
        ],
      ),
    );
  }
}
