import 'package:corretor_news/components/card.dart';
import 'package:flutter/material.dart';

Widget indicesCard(
    {String? iconUrl,
    String? currentTime,
    String? taxaName,
    currentValue,
    subName,
    yearValue,
    twelveValue}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 24),
    child: card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // Image.network(
          //   '$iconUrl',
          //   width: 50,
          // ),
          // SizedBox(
          //   width: 8,
          // ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '$taxaName',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Text(
                '$subName',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    // currentTime >= 0 ? '+ $currentTime %' : '$currentTime %',

                    currentTime!,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // color: currentTime >= 0 ? Colors.green : Colors.pink,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '$currentValue',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
              SizedBox(
                width: 28,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    // currentTime >= 0 ? '+ $currentTime %' : '$currentTime %',

                    '2021',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // color: currentTime >= 0 ? Colors.green : Colors.pink,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '$yearValue',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
              SizedBox(
                width: 28,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    // currentTime >= 0 ? '+ $currentTime %' : '$currentTime %',

                    '12M',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      // color: currentTime >= 0 ? Colors.green : Colors.pink,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '$twelveValue',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
