import 'package:corretor_news/widgets/discount_card.dart';
import 'package:corretor_news/widgets/item_list.dart';
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
                const EdgeInsets.only(left: 32, right: 32, bottom: 4, top: 32),
            child: Text(
              "Ofertas",
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            ),
          ),
          CardWide(),
          Padding(
            padding:
                const EdgeInsets.only(left: 32, right: 32, bottom: 4, top: 32),
            child: Text(
              "Cursos",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),

          // CategoryList(),

          ItemList(),
          Padding(
              padding: const EdgeInsets.only(
                  left: 32, right: 32, bottom: 4, top: 32),
              child: Text(
                "Serviços",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )),

          // CategoryList(),
          // DiscountCardView(),

          ItemList(),
        ],
      ),
    );
  }
}
