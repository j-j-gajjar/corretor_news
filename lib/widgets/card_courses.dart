import 'package:corretor_news/theme/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';

class CardCourses extends StatelessWidget {
  final Image image;
  final String title;
  final String hours;
  final Color color;

  CardCourses({
    required this.image,
    required this.title,
    required this.hours,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(30.0),
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: color,
      ),
      child: Row(
        children: <Widget>[
          image,
          SizedBox(width: 20.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Constants.textDark),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  hours,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Constants.textDark,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              // Container(
              //   decoration:
              //       BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              //   child: CircularPercentIndicator(
              //     backgroundColor: Colors.white,
              //     radius: 43.0,
              //     lineWidth: 0,
              //     animation: true,
              //     percent: percentage,
              //     center: Icon(Icons.arrow_forward, color: Color(0xFFF18C8E)),
              //     circularStrokeCap: CircularStrokeCap.round,
              //     progressColor: Color(0xFFF18C8E),
              //   ),
              // )
            ],

            // Row(
            //   children: <Widget>[
            //     Text(
            //       progress,
            //       style: TextStyle(
            //         fontSize: 13,
            //         fontWeight: FontWeight.bold,
            //         color: Constants.textDark,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 10,
            //     ),
            //     Container(
            //       decoration:
            //           BoxDecoration(color: Colors.white, shape: BoxShape.circle),
            //       child: CircularPercentIndicator(
            //         backgroundColor: Colors.white,
            //         radius: 43.0,
            //         lineWidth: 2.0,
            //         animation: true,
            //         percent: percentage,
            //         center: Icon(Icons.play_arrow, color: Color(0xFFF18C8E)),
            //         circularStrokeCap: CircularStrokeCap.round,
            //         progressColor: Color(0xFFF18C8E),
            //       ),
            //     )
            //   ],
            // )
          )
        ],
      ),
    );
  }
}
