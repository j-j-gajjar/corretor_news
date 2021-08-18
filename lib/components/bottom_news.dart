import 'package:corretor_news/providers/theme_provider.dart';
import 'package:corretor_news/theme/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BottomNewsBar extends StatelessWidget {
  const BottomNewsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isThemeChange = Provider.of<ThemeProvider>(context);
    return Container(
      alignment: Alignment.center,

      decoration: BoxDecoration(
          color:
              isThemeChange.mTheme == false ? kBgLightColor : Colors.grey[850],
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 4,
              blurRadius: 20,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ]),
      height: 80,

      // padding: EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          FutureBuilder<dynamic>(
            // future: favArticle,
            builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
              if (snapshot.hasData) {
                return Container(
                  child: IconButton(
                    padding: EdgeInsets.all(0),
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 24.0,
                    ),
                    onPressed: () {
                      // Favourite post
                      // favArticleBloc.deleteFavArticleById(article.id);
                      // setState(
                      //   () {
                      //     favArticle =
                      //         favArticleBloc.getFavArticle(article.id);
                      //   },
                      // );
                    },
                  ),
                );
              }
              return Container(
                decoration: BoxDecoration(),
                child: IconButton(
                  padding: EdgeInsets.all(0),
                  icon: (Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                    size: 32.0,
                  )),
                  onPressed: () {
                    Navigator.of(context).pop();
                    // favArticleBloc.addFavArticle(article);
                    // setState(() {
                    //   favArticle = favArticleBloc.getFavArticle(article.id);
                    // }
                    // );
                  },
                ),
              );
            },
          ),
          Container(
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(
                Icons.bookmark_border,
                color: Colors.grey,
                size: 32.0,
              ),
              onPressed: () {
                // Share.share('Share the news: ' + article.link);
              },
            ),
          ),
          Container(
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(
                Icons.share,
                color: Colors.grey,
                size: 32.0,
              ),
              onPressed: () {
                // Share.share('Share the news: ' + article.link);
              },
            ),
          ),
          Container(
            child: IconButton(
              padding: EdgeInsets.all(0),
              icon: Icon(
                Icons.open_in_new,
                color: Colors.grey,
                size: 32.0,
              ),
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => Comments(article.id),
                //     fullscreenDialog: true,
                //   ),
                // );
              },
            ),
          ),
        ],
      ),
    );
  }
}
