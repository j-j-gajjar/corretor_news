// import 'package:flutter/material.dart';
// import '../widgets/featured_category_list.dart';

// class IndicesTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: <Widget>[
//           ListHeading('Indíces', 16),
//           Container(
//             height: 450.0,
//             child: FeaturedCategoryList(),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ListHeading extends StatelessWidget {
//   final String title;
//   final int categoryId;

//   ListHeading(this.title, this.categoryId);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             title,
//             style: Theme.of(context).textTheme.headline4,
//           ),
//           // GestureDetector(
//           //   onTap: () {
//           //     PostCategory category = PostCategory(name: title, id: categoryId);
//           //     Navigator.push(
//           //         context,
//           //         MaterialPageRoute(
//           //             builder: (context) => SingleCategory(category)));
//           //   },
//           //   child: Container(
//           //     decoration: BoxDecoration(
//           //         borderRadius: BorderRadius.circular(6.0),
//           //         color: Theme.of(context).textSelectionColor),
//           //     padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
//           //     child: Text('Ver mais'),
//           //   ),
//           // )
//         ],
//       ),
//     );
//   }
// }
