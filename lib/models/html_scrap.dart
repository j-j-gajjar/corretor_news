// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
// import 'package:http/http.dart' as http;
// import 'package:html/parser.dart' as parser;
// import 'package:html/dom.dart' as dom;
// import 'package:url_launcher/url_launcher.dart';

// class MyHomepage extends StatefulWidget {
//   @override
//   _MyHomepageState createState() => _MyHomepageState();
// }

// class _MyHomepageState extends State<MyHomepage> {
//   List<String> title = [];
//   List<String> post = [];
//   List<String> link = [];
//   void _getData() async {
//     final response = await http.get('https://arprogramming.blogspot.com/');
//     dom.Document document = parser.parse(response.body);
//     final elements = document.getElementsByClassName('entry-header blog-entry-header');
//     final element2= document.getElementsByClassName('entry-content');
//     final linkElemnt=document.getElementsByClassName('entry-title');
//     setState(() {
//       title = elements
//           .map((element) =>
//       element.getElementsByTagName("a")[0].innerHtml)
//           .toList();
//       post = element2
//           .map((element) =>
//       element.getElementsByTagName("p")[0].innerHtml)
//           .toList();
//       link = linkElemnt
//           .map((element) =>
//       element.getElementsByTagName("a")[0].attributes['href'])
//           .toList();
//     });
//   }


//   @override
//   // ignore: must_call_super
//   void initState() {
//     _getData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black87,
//         body: post.length == 0 ? Text("zeroo"): ListView.builder(
//           itemCount: post.length,
//           itemBuilder: (context, index) {
//             return AnimationConfiguration.staggeredList(
//                 position: index,
//                 duration: const Duration(milliseconds: 375),
//               child: SlideAnimation(
//               verticalOffset: 50.0,
//               child: FadeInAnimation(
//                 child: GestureDetector(
//                   onTap: () async{
//                     dynamic url=link[index];
//                     if (await canLaunch(url))
//                       launch(url);
//                     else
//                     {
//                       print('error');
//                     }

//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Card(
//                       child: Container(
//                         color: Colors.black87,
//                         child: Column(
//                           children: <Widget>[
//                             Align(
//                               alignment: Alignment.centerLeft,
//                               child: Text(title[index],
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.red,
//                                   fontSize: 20,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: 15),
//                             Text(
//                               post[index],
//                               style: TextStyle(
//                                 color: Colors.white,
//                               ),
//                             )
//                           ],
//                         ),

//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               ),
//             );
//           },
//         ));
//   }
// }

// https://www.youtube.com/watch?v=Q2LmH8aqfDg
