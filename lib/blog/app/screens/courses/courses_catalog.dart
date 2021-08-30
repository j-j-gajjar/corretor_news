import 'package:corretor_news/theme/const.dart';
import 'package:corretor_news/widgets/card_courses.dart';
import 'package:corretor_news/widgets/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'courses_details.dart';

class CourseCatalog extends StatefulWidget {
  @override
  _CourseCatalogState createState() => _CourseCatalogState();
}

class _CourseCatalogState extends State<CourseCatalog> {
  final TextEditingController _searchControl = new TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _searchControl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 40),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    iconSize: 32,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Header(),
          Padding(
            padding: EdgeInsets.all(Constants.mainPadding),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[
                // SizedBox(height: Constants.mainPadding * 2),

                // Text(
                //   "Invista em\nvocê!",
                //   style: TextStyle(
                //       fontSize: 40,
                //       fontWeight: FontWeight.w900,
                //       color: Colors.white),
                // ),
                Text(
                  "Invista em",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                AnimatedTextKit(animatedTexts: [
                  TyperAnimatedText('você!',
                      speed: const Duration(milliseconds: 400),
                      textStyle: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Colors.white)),
                  TyperAnimatedText('conhecimento!',
                      speed: const Duration(milliseconds: 400),
                      textStyle: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Colors.white)),
                  TyperAnimatedText('capacitação!',
                      speed: const Duration(milliseconds: 400),
                      textStyle: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Colors.white)),
                  TyperAnimatedText('evolução!',
                      speed: const Duration(milliseconds: 400),
                      textStyle: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Colors.white)),
                  TyperAnimatedText('educação!',
                      speed: const Duration(milliseconds: 400),
                      textStyle: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          color: Colors.white)),
                ]),

                SizedBox(height: 40),

                Stack(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Color(0xFFFEF3F3),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "OFERTA DO DIA!",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w900,
                                color: Constants.textDark),
                          ),

                          SizedBox(height: 10.0),

                          // Categories Button
                          Container(
                            width: 150,
                            child: FlatButton(
                              padding: EdgeInsets.all(10.0),
                              color: Constants.salmonMain,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Expanded(
                                    child: Center(
                                      child: Text(
                                        "SAIBA MAIS",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  Icon(Icons.arrow_forward,
                                      color: Colors.white, size: 16),
                                ],
                              ),
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(13.0),
                              ),
                              onPressed: () {
                                // Navigate to Learning
                                debugPrint("Pressed here");
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryScreen()),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                    ),

                    // Image Researching Girl
                    Positioned(
                      right: -40,
                      bottom: 0,
                      child: Image.asset(
                        "assets/images/researching.png",
                        width: 200,
                        height: 104,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20.0),

                Text("Cursos recomendados:",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),

                SizedBox(height: 40.0),

                // List of courses
                ListView(
                  scrollDirection: Axis.vertical,
                  physics: BouncingScrollPhysics(),

                  // physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: <Widget>[
                    CardCourses(
                      image: Image.asset("assets/images/icon_1.png",
                          width: 40, height: 40),
                      color: Color(0xFFCBE1F0),
                      title: "Tour Virtual 3D",
                      hours: "10 módulos + 4 Bônus",
                    ),
                    SizedBox(height: 20.0),
                    CardCourses(
                      image: Image.asset("assets/images/icon_2.png",
                          width: 40, height: 40),
                      color: Constants.lightYellow,
                      title: "Sketch shortcuts and tricks",
                      hours: "10 hours, 19 lessons",
                    ),
                    SizedBox(height: 20.0),
                    CardCourses(
                      image: Image.asset("assets/images/icon_3.png",
                          width: 40, height: 40),
                      color: Constants.lightViolet,
                      title: "UI Motion Design in After Effects",
                      hours: "10 hours, 19 lessons",
                    ),
                    SizedBox(height: 20.0),
                    CardCourses(
                      image: Image.asset("assets/images/icon_3.png",
                          width: 40, height: 40),
                      color: Constants.lightViolet,
                      title: "UI Motion Design in After Effects",
                      hours: "10 hours, 19 lessons",
                    ),
                    SizedBox(height: 20.0),
                    CardCourses(
                      image: Image.asset("assets/images/icon_3.png",
                          width: 40, height: 40),
                      color: Constants.lightViolet,
                      title: "UI Motion Design in After Effects",
                      hours: "10 hours, 19 lessons",
                    ),
                    SizedBox(height: 20.0),
                    CardCourses(
                      image: Image.asset("assets/images/icon_3.png",
                          width: 40, height: 40),
                      color: Constants.lightViolet,
                      title: "UI Motion Design in After Effects",
                      hours: "10 hours, 19 lessons",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}