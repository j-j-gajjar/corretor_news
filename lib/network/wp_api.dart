import 'package:corretor_news/models/posts.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class WpApi {
  static const api = "https://publicidadeimobiliaria.com/wp-json/wp/v2";
  static const listApi = "https://publicidadeimobiliaria.com/wp-json/wp/v2";
  static const headers = {"Accept": "application/json"};

  String _parseHtmlString(String htmlString) {
    var document = parse(htmlString);

    String parsedString = parse(document.body!.text).documentElement!.text;

    return parsedString;
  }

  Future<List<Posts>> fetchTopPosts() async {
    List<Posts> posts = [];
    try {
      var response = await http.get(
        Uri.parse("$api/posts?_embed&per_page=20"),
        headers: headers,
      );

      var convertDataToJson = json.decode(response.body);
      convertDataToJson.forEach((post) {
        String title = _parseHtmlString(post['title']['rendered']);

        // if (title.length > 30) {
        //   title = _parseHtmlString(post['title']['rendered']).substring(0, 20) + "...";
        // }

        var time = post['date'];

        var content = _parseHtmlString(post['content']['rendered']);

        var imageUrl = post['_embedded']['wp:featuredmedia'] != null
            ? post['_embedded']['wp:featuredmedia'][0]['source_url']
            : '';

        posts.add(Posts(
          title: title,
          image: imageUrl,
          contents: content,
          time: time,
        ));
      });
    } catch (e) {
      print(e.toString());
      throw (e);
    }

    return posts;
  }

  // call for all Game articles
  Future<List<Posts>> fetchListPosts() async {
    // var response = await http.get(
    //   Uri.parse(listApi + "posts?_embed&categories=0"),
    //   headers: headers,
    // );

    var response = await http.get(
      Uri.parse("$api/posts?_embed&per_page=20"),
      headers: headers,
    );

    var convertDataToJson = jsonDecode(response.body);

    List<Posts> posts = [];

    convertDataToJson.forEach((post) {
      String title = _parseHtmlString(post['title']['rendered']);

      var content = _parseHtmlString(post['content']['rendered']);
      var author = _parseHtmlString(post['content']['rendered']);
      var time = post['date'];

      var imageUrl = post['_embedded']['wp:featuredmedia'] != null
          ? post['_embedded']['wp:featuredmedia'][0]['source_url']
          : Image.network(
              'assets/img_error.jpg',
              fit: BoxFit.cover,
              width: 100,
              height: 90,
            );

      posts.add(Posts(
          title: title,
          image: imageUrl,
          contents: content,
          time: time,
          authur: author));
    });

    return posts;
  }

  // api call for categories sections
  Future<List<Posts>> fetchOtherCategories(int cartCode) async {
    var response = await http.get(
      Uri.parse(listApi + "posts?_embed&categories=$cartCode"),
      headers: headers,
    );

    var convertDataToJson = jsonDecode(response.body);

    List<Posts> posts = [];

    convertDataToJson.forEach((post) {
      String title = _parseHtmlString(post['title']['rendered']);

      var content = _parseHtmlString(post['content']['rendered']);
      var time = post['date'];

      var imageUrl = post['_embedded']['wp:featuredmedia'] != null
          ? post['_embedded']['wp:featuredmedia'][0]['source_url']
          : Image.network(
              'assets/img_error.jpg',
              fit: BoxFit.cover,
              width: 100,
              height: 90,
            );

      // var time = post['date'];

      posts.add(
          Posts(title: title, image: imageUrl, contents: content, time: time));
    });

    return posts;
  }
}

//   static Future<List<PostCategory>> getCategoriesList({int page = 1}) async {
//     List<PostCategory> categories = List();
//     try {
//       var response = await http.get(Uri.parse(BASE_URL +
//           'categories?orderby=count&order=desc&per_page=15&page=$page'));
//       dynamic json = jsonDecode(response.body);

//       (json as List).forEach((v) {
//         categories.add(PostCategory.fromJson(v));
//       });
//     } catch (e) {
//       //TODO Handle No Internet Response
//     }
//     return categories;
//   }
// }

