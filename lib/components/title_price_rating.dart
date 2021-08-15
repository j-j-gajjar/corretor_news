// import 'package:flutter/material.dart';
// import 'package:food_app/constants.dart';
// import 'package:smooth_star_rating/smooth_star_rating.dart';

// class TitlePriceRating extends StatelessWidget {
//   final int price;
//   final String title;
//   final String subtitle;
//   const TitlePriceRating({
//     Key key,
//     this.price,
//     this.title,
//     this.subtitle,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 20),
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   title,
//                   style: Theme.of(context).textTheme.headline,
//                 ),
//                 SizedBox(height: 10),
//                 Row(
//                   children: <Widget>[
//                     SmoothStarRating(
//                       borderColor: kPrimaryColor,
//                     ),
//                     SizedBox(width: 10),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           priceTag(context, price: price),
//         ],
//       ),
//     );
//   }

//   ClipPath priceTag(BuildContext context, {int price}) {
//     return ClipPath(
//       clipper: PricerCliper(),
//       child: Container(
//         alignment: Alignment.topCenter,
//         padding: EdgeInsets.symmetric(vertical: 15),
//         height: 66,
//         width: 65,
//         color: kPrimaryColor,
//         child: Text(
//           "R\$$price",
//           style: Theme.of(context)
//               .textTheme
//               .title
//               .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//       ),
//     );
//   }
// }

// class PricerCliper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     double ignoreHeight = 20;
//     path.lineTo(0, size.height - ignoreHeight);
//     path.lineTo(size.width / 2, size.height);
//     path.lineTo(size.width, size.height - ignoreHeight);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
