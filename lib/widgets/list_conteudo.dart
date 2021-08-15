import 'package:corretor_news/pages/tabs/onboarding/onboarding_taxas.dart';
import 'package:flutter/material.dart';

import 'card_conteudo.dart';

class ListConteudo extends StatelessWidget {
  const ListConteudo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CardConteudo(
              overtitle: 'MARKETING DIGITAL',
              title: 'E-MAIL MARKETING',
              subtitle: 'VOCÊ SABE O QUE É?',
              icon: Icons.ac_unit,
              color1: Color(0xFF151575).withOpacity(0.8),
              color2: Color(0xFF151575).withOpacity(1),
              onPressed: () => goToOnTaxa(context)),
          CardConteudo(
              overtitle: 'MARKETING DIGITAL',
              title: 'E-MAIL MARKETING',
              subtitle: 'VOCÊ SABE O QUE É?',
              icon: Icons.ac_unit,
              color1: Color(0xFF151575).withOpacity(0.8),
              color2: Color(0xFF151575).withOpacity(1),
              onPressed: () {}),
          CardConteudo(
              overtitle: 'MARKETING DIGITAL',
              title: 'E-MAIL MARKETING',
              subtitle: 'VOCÊ SABE O QUE É?',
              icon: Icons.ac_unit,
              color1: Color(0xFF151575).withOpacity(0.8),
              color2: Color(0xFF151575).withOpacity(1),
              onPressed: () {}),
        ],
      ),
    );
  }
}

void goToOnTaxa(context) => Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => OnBoardingTaxa()),
    );
