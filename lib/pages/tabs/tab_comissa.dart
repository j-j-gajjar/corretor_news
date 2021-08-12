import 'package:corretor_news/theme/app_constants.dart';
import 'package:flutter/material.dart';
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
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 30, right: 20, bottom: 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("VALOR DA COMISSÃO:",
                        style: kHeadingextStyle.copyWith(
                            color: Colors.black.withOpacity(0.4),
                            fontSize: 20)),
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'R\$ $valorcomissao ',
                            style: ValueTextStyle,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // SizedBox(height: 100),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                height: 390,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    topLeft: Radius.circular(40),
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 32,
                      color: Colors.black.withOpacity(.3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
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
                      margin: EdgeInsets.symmetric(vertical: 32),
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      width: double.infinity,
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
                      child: Row(
                        children: <Widget>[
                          Container(
                              padding: EdgeInsets.all(14),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Icon(Icons.share)),
                          SizedBox(width: 30),
                          Expanded(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal,
                                elevation: 10,
                                shadowColor: Colors.teal[400],
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                padding: EdgeInsets.symmetric(vertical: 24),
                              ),
                              onPressed: () {
                                final int taxacorretor =
                                    int.parse(_taxacorretor.text);
                                final int vtotal = int.parse(_valorbruto.text);
                                setState(() {
                                  valorcomissao =
                                      calctaxacorretor(taxacorretor, vtotal);
                                });
                              },
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
                                  Icon(Icons.calculate_sharp)
                                ],
                              ),
                            ),
                          ),
                        ],
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
    );
  }
}

// 
