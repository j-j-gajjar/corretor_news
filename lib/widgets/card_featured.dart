import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:corretor_news/models/posts.dart';
import 'package:corretor_news/network/wp_api.dart';
import 'package:corretor_news/theme/const_values.dart';
import 'package:corretor_news/widgets/refresh_button.dart';
import 'package:flutter/material.dart';
import 'package:corretor_news/blog/app/screens/post_view.dart';

class CardFeaturedPost extends StatefulWidget {
  @override
  _CardFeaturedPostState createState() => _CardFeaturedPostState();
}

class _CardFeaturedPostState extends State<CardFeaturedPost> {
  WpApi api = WpApi();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.fetchTopPosts(),
      builder: (_, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: snapshot.data.length,
            itemBuilder: (_, index) {
              Posts post = snapshot.data[index];
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) {
                      return PostView(
                        posts: post,
                      );
                    }),
                  );
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    post.image != null
                        ? Container(
                            width: setContainerWidth(350),
                            height: setContainerHeight(220),
                            margin: EdgeInsets.symmetric(
                                horizontal:
                                    20), // ESPAÇAMENTO ENTRE CARDS (FEATURED)
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                                // border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: CachedNetworkImage(
                              imageUrl: '${post.image}',
                              fit: BoxFit.cover,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                width: setContainerWidth(350),
                                height: setContainerHeight(350),
                                // margin: EdgeInsets.only(left: 20),
                                // width: 80.0,
                                // height: 80.0,
                                decoration: BoxDecoration(
                                  // shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                      image: imageProvider, fit: BoxFit.cover),
                                ),
                              ),

                              // width: setContainerWidth(300),
                              // height: setContainerHeight(300),
                              placeholder: (_, url) {
                                return Center(
                                  child: Image.asset(
                                    'assets/images/newLoading.gif',
                                    width: 10,
                                    height: 10,
                                  ),
                                );
                              },
                            ),
                          )
                        : Container(
                            width: setContainerWidth(280),
                            height: setContainerHeight(300),
                            // margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20.0),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/img_error.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    Positioned(
                      top: 150,
                      // bottom: 0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        // color: Colors.white.withOpacity(0.8),
                        elevation: 08,
                        child: Container(
                          // color: Colors.blue,
                          height: setContainerHeight(140),
                          width: setContainerWidth(320),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                AutoSizeText(
                                  '${post.title}', // POST TITLE // // POST TITLE // // POST TITLE // // POST TITLE //
                                  style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w600,
                                    fontSize: setTextSize(18),
                                  ),
                                  maxLines: 3,
                                  minFontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      padding: EdgeInsets.fromLTRB(8, 6, 8, 6),
                                      margin: EdgeInsets.only(top: 16),
                                      child: Text(
                                        'EXAME NEGÓCIOS',
                                        // displayTime(widget.posts!.time.toString())}',
                                        // '',
                                        // article.category,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    // Icon(
                                    //   Icons.bookmark_border,
                                    //   size: 32,
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        } else if (snapshot.connectionState == ConnectionState.none) {
          return Center(
            child: Column(
              children: <Widget>[
                Text(
                  "Sorry please check you intetnet connection, and swipe on pull down to refresh \n \n Or",
                  style: TextStyle(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RefreshButton(
                  text: 'Recarregar',
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ],
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              Center(
                child: Image.asset(
                  'assets/images/newLoading.gif',
                  width: 350,
                  height: 200,
                ),
              ),
            ],
          );
        } else {
          return Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Please check if you are connected to the internet and swipe or pull down to refresh \n \n Or",
                    style: TextStyle(),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                RefreshButton(
                  text: 'Refresh',
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ],
            ),
          );
        }
      },
    );
  }
}

class ListPostVertical extends StatefulWidget {
  @override
  _ListPostVerticalState createState() => _ListPostVerticalState();
}

class _ListPostVerticalState extends State<ListPostVertical> {
  WpApi api = WpApi();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: api.fetchTopPosts(),
      builder: (_, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: snapshot.data.length,
            itemBuilder: (_, index) {
              Posts post = snapshot.data[index];
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) {
                      return PostView(
                        posts: post,
                      );
                    }),
                  );
                },
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    post.image != null
                        ? Container(
                            width: setContainerWidth(350),
                            height: setContainerHeight(220),
                            margin: EdgeInsets.symmetric(
                                horizontal:
                                    20), // ESPAÇAMENTO ENTRE CARDS (FEATURED)
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 4,
                                    offset: Offset(
                                        0, 2), // changes position of shadow
                                  ),
                                ],
                                // border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            child: CachedNetworkImage(
                              imageUrl: '${post.image}',
                              fit: BoxFit.cover,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                width: setContainerWidth(300),
                                height: setContainerHeight(350),
                                // margin: EdgeInsets.only(left: 20),
                                // width: 80.0,
                                // height: 80.0,
                                decoration: BoxDecoration(
                                  // shape: BoxShape.rectangle,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  image: DecorationImage(
                                      image: imageProvider, fit: BoxFit.cover),
                                ),
                              ),

                              // width: setContainerWidth(300),
                              // height: setContainerHeight(300),
                              placeholder: (_, url) {
                                return Center(
                                  child: Image.asset(
                                    'assets/images/newLoading.gif',
                                    width: 10,
                                    height: 10,
                                  ),
                                );
                              },
                            ),
                          )
                        : Container(
                            width: setContainerWidth(280),
                            height: setContainerHeight(300),
                            // margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              image: DecorationImage(
                                image: AssetImage(
                                  'assets/img_error.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                    Positioned(
                      top: 150,
                      // bottom: 0,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        // color: Colors.white.withOpacity(0.8),
                        elevation: 5,
                        child: Container(
                          // color: Colors.blue,
                          height: setContainerHeight(140),
                          width: setContainerWidth(300),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                AutoSizeText(
                                  '${post.title}', // POST TITLE // // POST TITLE // // POST TITLE // // POST TITLE //
                                  style: TextStyle(
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.w600,
                                    fontSize: setTextSize(18),
                                  ),
                                  maxLines: 3,
                                  minFontSize: 18,
                                  overflow: TextOverflow.ellipsis,
                                  softWrap: true,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.green.withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      padding: EdgeInsets.fromLTRB(8, 6, 8, 6),
                                      margin: EdgeInsets.only(top: 16),
                                      child: Text(
                                        'EXAME NEGÓCIOS',
                                        // displayTime(widget.posts!.time.toString())}',
                                        // '',
                                        // article.category,
                                        style: TextStyle(
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    // Icon(
                                    //   Icons.bookmark_border,
                                    //   size: 32,
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          );
        } else if (snapshot.connectionState == ConnectionState.none) {
          return Center(
            child: Column(
              children: <Widget>[
                Text(
                  "Sorry please check you intetnet connection, and swipe on pull down to refresh \n \n Or",
                  style: TextStyle(),
                ),
                SizedBox(
                  height: 20.0,
                ),
                RefreshButton(
                  text: 'Recarregar',
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ],
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Column(
            children: <Widget>[
              SizedBox(height: 10.0),
              Center(
                child: Image.asset(
                  'assets/images/newLoading.gif',
                  width: 350,
                  height: 200,
                ),
              ),
            ],
          );
        } else {
          return Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    "Please check if you are connected to the internet and swipe or pull down to refresh \n \n Or",
                    style: TextStyle(),
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
                RefreshButton(
                  text: 'Refresh',
                  onPressed: () {
                    setState(() {});
                  },
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
