import 'package:corretor_news/theme/app_constants.dart';
import 'package:corretor_news/widgets/card_coin.dart';
import 'package:corretor_news/widgets/card_indices.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TabIndices());
}

class TabIndices extends StatefulWidget {
  @override
  _TabIndicesState createState() => _TabIndicesState();
}

class _TabIndicesState extends State<TabIndices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgLightColor,
      body: Container(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 32,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: cardCoin(context,
                        moeda: 'Dólar',
                        valor: '\R\$5,58',
                        totalCrypto: '7.251332 BTC',
                        currentTime: 7.999),
                  ),
                  cardCoin(context,
                      moeda: 'Euro',
                      valor: '\R\$6,15',
                      totalCrypto: '5.251332 ETH',
                      currentTime: -2.999),
                  cardCoin(context,
                      moeda: 'Bitcoin',
                      valor: '\$43.589',
                      totalCrypto: '5.251332 ETH',
                      currentTime: -2.999),
                ]),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Indicadores:',
                        style: TextStyle(color: Colors.black87, fontSize: 20)),
                    Row(children: [
                      Icon(Icons.keyboard_arrow_down, color: Colors.black45),
                    ])
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      indicesCard(
                        taxaName: 'IGP-M',
                        subName: 'FGV',
                        currentValue: '0,78%',
                        currentTime: 'JUL/21',
                        yearValue: '13,08%',
                        twelveValue: '33,84%',
                      ),
                      indicesCard(
                        taxaName: 'IPCA',
                        subName: 'IBGE',
                        currentValue: '0,98%',
                        currentTime: 'JUL/21',
                        yearValue: '4,50%',
                        twelveValue: '8,99%',
                      ),
                      indicesCard(
                        taxaName: 'CDI',
                        subName: '',
                        currentValue: '0,26%',
                        currentTime: 'JUL/21',
                        yearValue: '0,56%',
                        twelveValue: '0,76%',
                      ),
                      indicesCard(
                        taxaName: 'IGP-10',
                        subName: 'FGV',
                        currentValue: '0,18%',
                        currentTime: 'JUL/21',
                        yearValue: '13,99%',
                        twelveValue: '34,61%',
                      ),
                      indicesCard(
                        taxaName: 'INPC',
                        subName: 'IGBE',
                        currentValue: '1,02%',
                        currentTime: 'JUL/21',
                        yearValue: '4,73',
                        twelveValue: '9,85%',
                      ),
                      indicesCard(
                        taxaName: 'IPC',
                        subName: 'FIPE',
                        currentValue: '1,02%',
                        currentTime: 'JUL/21',
                        yearValue: '2,94%',
                        twelveValue: '9,02%',
                      ),
                      indicesCard(
                        taxaName: 'SELIC',
                        subName: '\JUL/21',
                        currentValue: '0,26%',
                        currentTime: 'JUL/21',
                        yearValue: '0,56%',
                        twelveValue: '0,76%',
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
