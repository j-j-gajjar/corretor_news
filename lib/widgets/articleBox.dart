// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:corretor_news/models/article.dart';
// import 'package:corretor_news/theme/const_values.dart';
// import 'package:flutter/material.dart';
// import 'package:html/dom.dart' as dom;
// import 'package:http/http.dart';
// import 'package:corretor_news/models/posts.dart';

// Widget articleBox(BuildContext context, Article article, String heroId) {
//   return ConstrainedBox(
//     constraints: new BoxConstraints(
//       minHeight: 160.0,
//       maxHeight: 175.0,
//     ),
//     child: Stack(
//       children: <Widget>[
//         Container(
//           alignment: Alignment.bottomRight,
//           margin: EdgeInsets.fromLTRB(20, 16, 8, 0),
//           child: Card(
//             elevation: 6,
//             child: Padding(
//               padding: EdgeInsets.fromLTRB(110, 0, 0, 0),
//               child: Column(
//                 children: <Widget>[
//                   Container(
//                     padding: EdgeInsets.fromLTRB(8, 0, 4, 8),
//                     child: Column(
//                       children: <Widget>[
//                         Container(
//                           child: Text(
//                             post.title!.substring(0, 20) + "...",
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: setTextSize(18),
//                             ),
//                             softWrap: true,
//                             overflow: TextOverflow.fade,
//                           ),
//                         ),
//                         Container(
//                           alignment: Alignment.topLeft,
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: <Widget>[
//                               Container(
//                                 decoration: BoxDecoration(
//                                     color: Color(0xFFE3E3E3),
//                                     borderRadius: BorderRadius.circular(3)),
//                                 padding: EdgeInsets.fromLTRB(8, 4, 8, 4),
//                                 margin: EdgeInsets.fromLTRB(0, 0, 0, 8),
//                                 child: Text(
//                                   article.category,
//                                   style: TextStyle(
//                                       color: Colors.black,
//                                       fontSize: 11,
//                                       fontWeight: FontWeight.w400),
//                                 ),
//                               ),
//                               Container(
//                                 padding: EdgeInsets.fromLTRB(4, 8, 4, 8),
//                                 child: Row(
//                                   children: <Widget>[
//                                     Icon(
//                                       Icons.timer,
//                                       color: Colors.black45,
//                                       size: 12.0,
//                                     ),
//                                     SizedBox(
//                                       width: 4,
//                                     ),
//                                     Text(
//                                       "${displayTime(post.time.toString())}",
//                                       style: TextStyle(),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         SizedBox(
//           height: 170,
//           width: 145,
//           child: Card(
//             child: Hero(
//               tag: heroId,
//               child: ClipRRect(
//                 borderRadius: new BorderRadius.circular(8.0),
//                 child: CachedNetworkImage(
//                   imageUrl: '${post.image}',
//                   fit: BoxFit.cover,
//                   placeholder: (_, url) {
//                     return Image.asset(
//                       'assets/images/newLoading.gif',
//                       width: 50,
//                       height: 50,
//                     );
//                   },
//                 ),
//               ),
//             ),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10.0),
//             ),
//             elevation: 0,
//             margin: EdgeInsets.all(10),
//           ),
//         ),
//         article.video != ""
//             ? Positioned(
//                 left: 12,
//                 top: 12,
//                 child: Card(
//                   color: Theme.of(context).accentColor,
//                   child: CircleAvatar(
//                     radius: 14,
//                     backgroundColor: Colors.transparent,
//                     child: Image.asset("assets/play-button.png"),
//                   ),
//                   elevation: 8,
//                   shape: CircleBorder(),
//                   clipBehavior: Clip.antiAlias,
//                 ),
//               )
//             : Container(),
//       ],
//     ),
//   );
// }
