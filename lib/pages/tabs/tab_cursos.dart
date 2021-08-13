import 'package:corretor_news/theme/app_texts.dart';
import 'package:corretor_news/widgets/discount_card.dart';
import 'package:corretor_news/widgets/item_list.dart';
import 'package:corretor_news/widgets/services_list.dart';
import 'package:flutter/material.dart';

class TabCursos extends StatelessWidget {
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
              "Cursos",
              style: textTheme.headline4,
            ),
          ),

          // CategoryList(),

          ServicesList(),
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
