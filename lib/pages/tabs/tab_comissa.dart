import 'package:corretor_news/components/bottom_calc.dart';
import 'package:corretor_news/components/bottom_news.dart';
import 'package:corretor_news/providers/theme_provider.dart';
import 'package:corretor_news/theme/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class ComissaTab extends StatelessWidget {
//   int calctaxacorretor(int taxacorretor, int valorbruto) {
//     return (taxacorretor * valorbruto / 100).truncate();
//   }

void main() {
  runApp(TabComissa());
}

class TabComissa extends StatefulWidget {
  @override
  _TabComissaState createState() => _TabComissaState();
}

class _TabComissaState extends State<TabComissa> {
  int calctaxacorretor(int taxacorretor, int valorbruto) {
    return (taxacorretor * valorbruto / 100).truncate();
  }

  int? valorcomissao;
  TextEditingController _taxacorretor = TextEditingController();
  TextEditingController _valorbruto = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final isThemeChange = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Container(
        // alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 26, right: 20, bottom: 40),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("VALOR DA COMISSÃO:",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: (valorcomissao == null)
                                ? 'R\$ 0,00'
                                : 'R\$ $valorcomissao ',
                            style: ValueTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 32),
              Container(
                padding: EdgeInsets.only(bottom: 40),
                // height: 390,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: isThemeChange.mTheme == false
                      ? Colors.white
                      : Colors.grey[900],
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 32,
                      color: Colors.black.withOpacity(.3),
                    ),
                  ],
                ),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Insira os valores abaixo:',
                      style: TextStyle(fontSize: 18, color: Colors.grey[600]),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40.0,
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            style: TextStyle(
                                color: Colors.teal[500],
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.green[50]!.withOpacity(0.2),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: BorderSide(color: Colors.green)),
                              suffixIcon: Icon(Icons.monetization_on_outlined,
                                  color: Colors.teal.withOpacity(0.7)),
                              hintText: "Valor Total (R\$)",
                              prefixText: 'R\$',
                              prefixStyle: TextStyle(
                                  color: Colors.teal.withOpacity(0.7),
                                  fontSize: 18),
                              hintStyle: TextStyle(
                                  color: Colors.teal.withOpacity(0.7),
                                  fontSize: 18),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: BorderSide(color: Colors.teal)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide:
                                      // BorderSide(color: Colors.green[200])),
                                      BorderSide(color: Colors.green)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: BorderSide(color: Colors.teal)),
                            ),
                            controller: _valorbruto,
                          ),
                        SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            style: TextStyle(
                                color: Colors.teal[500],
                                fontSize: 24,
                                fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.green[50]!.withOpacity(0.2),

                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 20),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: BorderSide(color: Colors.teal)),
                              // labelText: 'Valor',
                              prefixIcon: Icon(
                                Icons.calculate_outlined,
                                color: Colors.teal.withOpacity(0.7),
                              ),
                              hintText: "Comissão (%)",
                              suffixText: '%',
                              prefixStyle: TextStyle(
                                  color: Colors.teal.withOpacity(0.7),
                                  fontSize: 20),
                              hintStyle: TextStyle(
                                  color: Colors.teal.withOpacity(0.7),
                                  fontSize: 18),
                              disabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: BorderSide(color: Colors.teal)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide:
                                      // BorderSide(color: Colors.green[200])),
                                      BorderSide(color: Colors.green)),

                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                  borderSide: BorderSide(color: Colors.teal)),
                            ),
                            controller: _taxacorretor,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // alignment: Alignment.topCenter,
                      // margin: EdgeInsets.symmetric(vertical: 32),
                      padding: EdgeInsets.symmetric(horizontal: 32),
                      // width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        // boxShadow: [
                        //   BoxShadow(
                        //     offset: Offset(0, 4),
                        //     blurRadius: 20,
                        //     color: Colors.black.withOpacity(.3),
                        //   ),
                        // ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomCalcBar(),
    );
  }
}

//
