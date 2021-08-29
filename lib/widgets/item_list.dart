import 'package:flutter/material.dart';

import 'item_card.dart';
import 'list_conteudo.dart';

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
              pngSrc: ("assets/logo/bitrix24.png"),
              title: "Bitrix24",
              subtitle: "2 Meses Grátis",
              onpress: () {}

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
            pngSrc: ("assets/logo/bling.png"),
            title: "Bling",
            subtitle: "O ERP pensado no Corretor de Imóveis",
            onpress: () => goToOnTaxa(context),
          ),
          ItemCard(
            pngSrc: ("assets/logo/leadlovers.png"),
            title: "Leadlovers",
            subtitle: "Estratégia e automação de E-mail Marketing",
            onpress: () {},
          ),
          ItemCard(
            pngSrc: ("assets/logo/mlabs.png"),
            title: "mLabs",
            subtitle: "Gestão de Redes Socias",
            onpress: () {},
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
