import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:corretor_news/models/posts.dart';
import 'package:corretor_news/network/wp_api.dart';
import 'package:corretor_news/theme/const_values.dart';
import 'package:corretor_news/widgets/refresh_button.dart';
import 'package:flutter/material.dart';
import 'package:corretor_news/blog/app/screens/post_view.dart';

class HorizontalView extends StatefulWidget {
  @override
  _HorizontalViewState createState() => _HorizontalViewState();
}

class _HorizontalViewState extends State<HorizontalView> {
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
                child: Column(
                  children: <Widget>[
                    post.image != null
                        ? Container(
                            width: setContainerWidth(300),
                            height: setContainerHeight(350),
                            margin: EdgeInsets.symmetric(horizontal: 08),
                            decoration: BoxDecoration(
                                // border: Border.all(),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
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
                                      BorderRadius.all(Radius.circular(20)),
                                  image: DecorationImage(
                                      image: imageProvider, fit: BoxFit.cover),
                                ),
                              ),

                              // width: setContainerWidth(300),
                              // height: setContainerHeight(300),
                              placeholder: (_, url) {
                                return Image.asset(
                                  'assets/images/newLoading.gif',
                                  width: 10,
                                  height: 10,
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
                    Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Container(
                        // color: Colors.blue,
                        height: setContainerHeight(160),
                        width: setContainerWidth(270),
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            children: [
                              AutoSizeText(
                                '${post.title}',
                                style: TextStyle(
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
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Color(0xFFE3E3E3),
                                      borderRadius: BorderRadius.circular(3),
                                    ),
                                    padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
                                    margin: EdgeInsets.all(16),
                                    child: Text(
                                      '',
                                      // displayTime(widget.posts!.time.toString())}',
                                      // '',
                                      // article.category,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.bookmark_border,
                                    size: 32,
                                  ),
                                ],
                              ),
                            ],
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
                  text: 'Recarregar',
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
