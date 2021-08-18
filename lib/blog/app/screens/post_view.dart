import 'package:corretor_news/components/app_title_bar.dart';
import 'package:corretor_news/components/bottom_news.dart';
import 'package:corretor_news/models/posts.dart';
import 'package:corretor_news/theme/app_constants.dart';
import 'package:corretor_news/theme/const_values.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';

class PostView extends StatefulWidget {
  final Posts? posts;

  // final article = widget.article;
  // final heroId = widget.heroId;
  PostView({Key? key, @required this.posts}) : super(key: key);

  @override
  _PostViewState createState() => _PostViewState();
}

class _PostViewState extends State<PostView> {
  displayTime(String date) {
    return DateFormat.yMMMMEEEEd().format(DateTime.parse(date));
  }

  Box? storeData;

  @override
  void initState() {
    super.initState();
    storeData = Hive.box(appState);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   toolbarHeight: 80,
      //   elevation: 4,
      //   leading: Padding(
      //     padding: const EdgeInsets.only(left: 8),
      //     child: GestureDetector(
      //       child: Icon(Icons.menu_open, color: Colors.black38),
      //     ),
      //   ),
      //   title: Center(
      //     child: RichText(
      //       text: titleAppBar(context),
      //     ),
      //   ),
      //   actions: <Widget>[
      //     Padding(
      //       padding: const EdgeInsets.only(right: 26),
      //       child: GestureDetector(
      //         child: Icon(
      //           Icons.light_mode_outlined,
      //           color: Colors.black38,
      //         ),
      //       ),
      //     )
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: setContainerHeight(320),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 20,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                    image: DecorationImage(
                        image: NetworkImage('${widget.posts!.image}'),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${widget.posts!.title}',
                    style: TextStyle(
                      fontSize: setTextSize(28),
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto Mono',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFE3E3E3),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                        margin: EdgeInsets.all(16),
                        child: Text(
                          '${displayTime(widget.posts!.time.toString())}',
                          // '',
                          // article.category,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () async {
                          Posts post = Posts(
                            title: widget.posts!.title,
                            image: widget.posts!.image,
                            contents: widget.posts!.contents,
                            time: widget.posts!.time,
                            authur: widget.posts!.authur,
                          );
                          await storeData!.add(post);
                          Fluttertoast.showToast(
                            msg: 'Salvo!',
                            gravity: ToastGravity.CENTER,
                            toastLength: Toast.LENGTH_SHORT,
                          );
                        },
                        child: Icon(
                          Icons.bookmark_border,
                          size: 32,
                        ),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 45,
                  //   child: ListTile(
                  //     leading: CircleAvatar(
                  //         // backgroundImage: NetworkImage(article.avatar),
                  //         ),
                  //     title: Text(
                  //       '${widget.posts!.authur}',
                  //       // "By " + article.author,
                  //       // style: TextStyle(fontSize: 12),
                  //     ),
                  //     subtitle: Text(
                  //       '${displayTime(widget.posts!.time.toString())}',
                  //       style: TextStyle(
                  //         color: Colors.grey,
                  //         fontWeight: FontWeight.bold,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Row(
                    children: [
                      // Text(
                      //   '${displayTime(widget.posts!.time.toString())}',
                      //   style: TextStyle(
                      //     color: Colors.grey,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      // ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(4, 16, 4, 0),
                    child: Text(
                      '${widget.posts!.contents}',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: setTextSize(20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNewsBar(),
    );
  }
}
