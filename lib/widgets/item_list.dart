import 'package:flutter/material.dart';

import 'item_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
              pngSrc: ("assets/logos/bitrix24.png"),
              title: "Bitrix24",
              subtitle: "2 Meses Grátis",
              press: () {}
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
          ItemCard(
            pngSrc: ("assets/logos/bling.png"),
            title: "Bling",
            subtitle: "O ERP pensado no Corretor de Imóveis",
            press: () {},
          ),
          ItemCard(
            pngSrc: ("assets/logos/leadlovers.png"),
            title: "Leadlovers",
            subtitle: "Estratégia e automação de E-mail Marketing",
            press: () {},
          ),
          ItemCard(
              pngSrc: ("assets/logos/mlabs.png"),
              title: "mLabs",
              subtitle: "Gestão de Redes Socias",
              press: () {}
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
