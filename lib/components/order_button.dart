// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:corretor_news/theme/app_constants.dart';

// class OrderButton extends StatelessWidget {
//   const OrderButton({
//     required Key key,
//     required this.size,
//   }) : super(key: key);

//   final String size;
//   final Function press;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // padding: EdgeInsets.all(2),
//       width: (240),
//       // it will cover 80% of total width
//       decoration: BoxDecoration(
//         color: kPrimaryColor,
//         borderRadius: BorderRadius.circular(30),
//       ),
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           child: Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 SvgPicture.asset("assets/icons/bag.svg"),
//                 SizedBox(width: 20),
//                 Text(
//                   "OBTER OFERTA",
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18,
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
