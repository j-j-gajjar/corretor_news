// import 'package:corretor_news/components/item_image.dart';
// import 'package:corretor_news/components/order_button.dart';
// import 'package:corretor_news/components/title_price_rating.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:corretor_news/theme/app_constants.dart';
// import 'package:food_app/screens/details/components/item_image.dart';
// import 'package:food_app/screens/details/components/order_button.dart';
// import 'package:food_app/screens/details/components/title_price_rating.dart';

// class Body extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Column(
//       children: <Widget>[
//         Image.asset(
//           "assets/images/burger.png",
//           height: size.height * 0.25,
//           width: double.infinity,
//           // it cover the 25% of total height
//           fit: BoxFit.fill,
//         ),
//         Expanded(
//           child: ItemInfo(),
//         ),
//         Positioned(
//           right: 0,
//           left: 0,
//           bottom: 0,
//           child: Container(
//             padding: EdgeInsets.all(20),
//             height: 100,
//             width: double.infinity,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   offset: Offset(0, 4),
//                   blurRadius: 30,
//                   color: Colors.black.withOpacity(.3),
//                 ),
//               ],
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: <Widget>[
//                 Container(
//                   padding: EdgeInsets.all(14),
//                   height: 80,
//                   width: 60,
//                   decoration: BoxDecoration(
//                     color: Colors.grey.shade200,
//                     borderRadius: BorderRadius.circular(40),
//                   ),
//                   child: Icon(Icons.share),
//                 ),
//                 // OrderButton(
//                 //   // size: (20),
//                 //   press: () {},
//                 // ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class ItemInfo extends StatelessWidget {
//   const ItemInfo({
//     required Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       padding: EdgeInsets.all(20),
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.only(
//           topLeft: Radius.circular(30),
//           topRight: Radius.circular(30),
//         ),
//       ),
//       child: SingleChildScrollView(
//         physics: BouncingScrollPhysics(),
//         child: Column(
//           children: <Widget>[
//             shopeName(name: "Marketing Digital"),

//             // TitlePriceRating(
//             //   title: "Google ADS",
//             //   price: 97,
//             // ),

//             // Text(
//             //   "Nowadays, making printed materials have become fast, easy and simple. If you want your promotional material to be an eye-catching object, you should make it colored. By way of using inkjet printer this is not hard to make. An inkjet printer is any printer that places extremely small droplets of ink onto paper to create an image.",
//             //   style: TextStyle(
//             //     height: 1.5,
//             //   ),
//             // ),
//             SizedBox(height: 20),
//             CourseContent(
//               number: '01',
//               topictitle: '',
//               subtopic: "Identidade Visual",
//             ),
//             SizedBox(height: 16),
//             CourseContent(
//               number: '04',
//               topictitle: '',
//               subtopic: "Pack de Canva",
//             ),
//             SizedBox(height: 16),
//             CourseContent(
//               number: '04',
//               topictitle: '5.35',
//               subtopic: "Customer Perspective",
//             ),
//             SizedBox(height: 16),
//             CourseContent(
//               number: '04',
//               topictitle: '5.35',
//               subtopic: "Customer Perspective",
//             ),
//             SizedBox(height: 16),
//             CourseContent(
//               number: '04',
//               topictitle: '5.35',
//               subtopic: "Customer Perspective",
//             ),
//             SizedBox(height: size.height * 0.1),
//             // Free space  10% of total height
//             // Positioned(
//             //   right: 0,
//             //   left: 0,
//             //   bottom: 0,
//             //   child: Container(
//             //     padding: EdgeInsets.all(20),
//             //     height: 100,
//             //     width: double.infinity,
//             //     decoration: BoxDecoration(
//             //       color: Colors.white,
//             //       borderRadius: BorderRadius.circular(40),
//             //       boxShadow: [
//             //         BoxShadow(
//             //           offset: Offset(0, 4),
//             //           blurRadius: 50,
//             //           color: kTextColor.withOpacity(.1),
//             //         ),
//             //       ],
//             //     ),
//             //     child: Row(
//             //       children: <Widget>[
//             //         Container(
//             //           padding: EdgeInsets.all(14),
//             //           height: 56,
//             //           width: 80,
//             //           decoration: BoxDecoration(
//             //             color: Color(0xFFFFEDEE),
//             //             borderRadius: BorderRadius.circular(40),
//             //           ),
//             //           child: Icon(Icons.ac_unit),
//             //         ),
//             //         SizedBox(width: 20),
//             //         Expanded(
//             //           child: Container(
//             //             alignment: Alignment.center,
//             //             height: 56,
//             //             decoration: BoxDecoration(
//             //               borderRadius: BorderRadius.circular(40),
//             //               color: Colors.blue,
//             //             ),
//             //             child: Text(
//             //               "Buy Now",
//             //               // style: kSubtitleTextSyule.copyWith(
//             //               //   color: Colors.white,
//             //               //   fontWeight: FontWeight.bold,
//             //               // ),
//             //             ),
//             //           ),
//             //         )
//             //       ],
//             //     ),
//             //   ),
//             // ),
//           ],
//         ),
//       ),
//     );
//   }

//   Row shopeName({required String name}) {
//     return Row(
//       children: <Widget>[
//         Icon(
//           Icons.book,
//           color: ksecondaryColor,
//         ),
//         SizedBox(width: 10),
//         Text(name),
//       ],
//     );
//   }
// }

// Widget courseCon(BuildContext context,
//     {String? topictitle, double? currentTime, number, String? subtopic}) {
//   var isDone;
//   return Container(
//     decoration: BoxDecoration(
//         color: Colors.grey.shade100,
//         borderRadius: BorderRadius.all(Radius.circular(15))),
//     child: Padding(
//       padding: const EdgeInsets.all(16),
//       child: Row(
//         children: <Widget>[
//           Text(
//             number,
//             style: TextStyle(fontSize: 32),
//             // style: kHeadingextStyle.copyWith(
//             //   color: kTextColor.withOpacity(.15),
//             //   fontSize: 32,
//             // ),
//           ),
//           SizedBox(width: 20),
//           RichText(
//             text: TextSpan(
//               children: [
//                 TextSpan(
//                   text: topictitle,
//                   style: TextStyle(
//                     color: kTextColor.withOpacity(.5),
//                     fontSize: 18,
//                   ),
//                 ),
//                 TextSpan(
//                   text: subtopic,
//                   style: TextStyle(color: Colors.green, fontSize: 16),
//                   // style: kSubtitleTextSyule.copyWith(
//                   //   fontWeight: FontWeight.w600,
//                   //   height: 1.5,
//                   // ),
//                 ),
//               ],
//             ),
//           ),
//           Spacer(),
//           Container(
//             margin: EdgeInsets.only(left: 20),
//             height: 40,
//             width: 40,
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.green.withOpacity(isDone ? 1 : .5),
//             ),
//             child: Icon(Icons.play_arrow, color: Colors.white),
//           )
//         ],
//       ),
//     ),
//   );
// }

// class CourseContent extends StatelessWidget {
//   final String number;
//   final double duration;
//   final String topictitle;
//   final String subtopic;
//   final bool isDone;
//   const CourseContent({
//     required Key key,
//     required this.number,
//     required this.duration,
//     required this.topictitle,
//     required this.subtopic,
//     this.isDone = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           color: Colors.grey.shade100,
//           borderRadius: BorderRadius.all(Radius.circular(15))),
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           children: <Widget>[
//             Text(
//               number,
//               style: TextStyle(fontSize: 32),
//               // style: kHeadingextStyle.copyWith(
//               //   color: kTextColor.withOpacity(.15),
//               //   fontSize: 32,
//               // ),
//             ),
//             SizedBox(width: 20),
//             RichText(
//               text: TextSpan(
//                 children: [
//                   TextSpan(
//                     text: topictitle,
//                     style: TextStyle(
//                       color: kTextColor.withOpacity(.5),
//                       fontSize: 18,
//                     ),
//                   ),
//                   TextSpan(
//                     text: subtopic,
//                     style: TextStyle(color: Colors.green, fontSize: 16),
//                     // style: kSubtitleTextSyule.copyWith(
//                     //   fontWeight: FontWeight.w600,
//                     //   height: 1.5,
//                     // ),
//                   ),
//                 ],
//               ),
//             ),
//             Spacer(),
//             Container(
//               margin: EdgeInsets.only(left: 20),
//               height: 40,
//               width: 40,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: Colors.green.withOpacity(isDone ? 1 : .5),
//               ),
//               child: Icon(Icons.play_arrow, color: Colors.white),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
