import 'package:corretor_news/components/card.dart';
import 'package:corretor_news/theme/app_texts.dart';
import 'package:flutter/material.dart';

Widget cardCoin(BuildContext context,
    {String? moeda, valor, double? currentTime, String? pngSrc}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: card(
      width: MediaQuery.of(context).size.width - 50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      '$moeda',
                      style: textTheme.headline2,
                    ),
                    SizedBox(width: 10),
                  ],
                ),
                SizedBox(width: 20),
                // Expanded(
                //   child: Text('Total Wallet Balance',
                //       style: TextStyle(fontWeight: FontWeight.bold)),
                // ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 7),
                  decoration: BoxDecoration(
                      color: currentTime! >= 0 ? Colors.green : Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Text(
                    currentTime >= 0 ? '+ $currentTime %' : '$currentTime %',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            Divider(
              thickness: 0.5,
              endIndent: 20,
              indent: 20,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$valor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 50,
                  ),
                ),
                // Image.network(
                //   '$iconUrl',
                // width: 50,
                // ),
                Image(
                  image: AssetImage(pngSrc!),
                  width: 60,
                ),
                // Icon(required this.pngSrc,
                //   Icons.monetization_on,
                //   color: Colors.black.withOpacity(0.1),
                //   size: 90.0,
                // ),
              ],
            ),

            SizedBox(height: 20),
            // Text(
            //   '$totalCrypto',
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 22,
            //       color: Colors.black38),
            // ),
          ],
        ),
      ),
    ),
  );
}
