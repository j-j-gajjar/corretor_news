import 'package:corretor_news/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:share/share.dart';

class BottomCalcBar extends StatelessWidget {
  const BottomCalcBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isThemeChange = Provider.of<ThemeProvider>(context);
    return Container(
      alignment: Alignment.center,

      decoration: BoxDecoration(
          color:
              isThemeChange.mTheme == false ? Colors.white : Colors.grey[850],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 20,
              offset: Offset(0, -15), // changes position of shadow
            ),
          ]),
      height: 120,

      // padding: EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 32),
          Card(
            elevation: 10,
            color: Colors.teal[500],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(40),
              enableFeedback: true,
              onTap: () {
                Share.share('O valor final da sua comissão é de: ',
                    subject: 'Look what I made!');
                // Navigator.of(context)
                //     .push(MaterialPageRoute(builder: (_) => Settings()));
              },
              child: Container(
                padding: EdgeInsets.all(14),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  // color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Icon(
                  Icons.share,
                  color: Colors.white,
                  // Colors.teal.withOpacity(0.7),
                ),
              ),
            ),
          ),
          SizedBox(width: 24),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.teal,
                elevation: 10,
                // shadowColor: Colors.teal[400],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                ),
                padding: EdgeInsets.symmetric(vertical: 24),
              ),
              onPressed: () {},
              // () {
              //   final int taxacorretor = int.parse(_taxacorretor.text);
              //   final int vtotal = int.parse(_valorbruto.text);
              //   setState(() {
              //     valorcomissao = calctaxacorretor(taxacorretor, vtotal);
              //   });
              // },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CALCULAR',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 2),
                  ),
                  SizedBox(width: 20),
                  FaIcon(FontAwesomeIcons.calculator),
                ],
              ),
            ),
          ),
          SizedBox(width: 24),
        ],
      ),
    );
  }
}
