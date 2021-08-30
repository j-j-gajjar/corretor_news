import 'package:corretor_news/theme/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.vertical(bottom: Radius.circular(50.0)),
              color: Constants.blueMain,
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  child: Image.asset("assets/images/blob_2.png",
                      width: 352, height: 500, color: Constants.blueLight),
                  top: -100,
                  right: -130,
                ),
                // Positioned(
                //   child: Image.asset("assets/images/blob_1.png",
                //       width: 302, height: 343, color: Constants.blueDark),
                //   top: 20,
                //   left: -100,
                // ),
                Positioned(
                  child: Image.asset("assets/images/courses.png",
                      width: 300, height: 400),
                  bottom: 100,
                  left: 180,
                ),
              ],
            ),
          ),
          flex: 1,
        ),
        Expanded(child: Container(), flex: 1)
      ],
    );
  }
}
