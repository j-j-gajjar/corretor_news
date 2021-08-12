// import 'package:flutter/material.dart';
// import 'package:wordpress_flutter/network/wp_api.dart';

// import '../config.dart';
// import '../model/post_entity.dart';
// import '../pages/single_category.dart';
// import '../widgets/featured_category_list.dart';
// import '../widgets/posts_list.dart';

// class NewsTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Padding(
//               padding: const EdgeInsets.fromLTRB(8, 16, 0, 0),
//               child: ListHeading(FEATURED_CATEGORY_TITLE, FEATURED_CATEGORY_ID),
//             ),
//             Container(
//               height: 420.0,
//               child: FeaturedCategoryList(),
//             ),
//             SizedBox(height: 16),
//             // Padding(
//             //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             //   child: SubListHeading('Categorias'),
//             // ),
//             // Padding(
//             //   padding: const EdgeInsets.all(8.0),
//             //   child: ListTile(
//             //     title: Text(
//             //       category.name,
//             //       textAlign: TextAlign.center,
//             //     ),
//             //     onTap: () {
//             //       Navigator.push(
//             //           context,
//             //           MaterialPageRoute(
//             //               builder: (context) => SingleCategory(category)));
//             //     },
//             //   ),
//             // ),
//             SizedBox(height: 16),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: SubListHeading('Últimas'),
//             ),
//             Flexible(
//               // fit: FlexFit.loose,
//               child: PostsList(),
//             ),
//           ],
//         ),
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

// class SubListHeading extends StatelessWidget {
//   final String subtitle;

//   SubListHeading(this.subtitle);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           Text(
//             subtitle,
//             style: Theme.of(context).textTheme.headline4,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CategoriesTab extends StatefulWidget {
//   @override
//   _CategoriesTabState createState() => _CategoriesTabState();
// }

// class _CategoriesTabState extends State<CategoriesTab> {
//   List<PostCategory> categories = new List<PostCategory>();
//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();
//     _getCategoriesList();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return isLoading
//         ? Center(child: CircularProgressIndicator())
//         : ListView.builder(
//             itemBuilder: categoryTile,
//             itemCount: categories.length,
//             scrollDirection: Axis.vertical,
//             shrinkWrap: true,
//             physics: ClampingScrollPhysics(),
//           );
//   }

//   void _getCategoriesList() {
//     WpApi.getCategoriesList().then((_categories) {
//       if (mounted) {
//         setState(() {
//           isLoading = false;
//           categories.addAll(_categories);
//         });
//       }
//     });
//   }

//   Widget categoryTile(BuildContext context, int index) {
//     PostCategory category = categories[index];

//     return Card(
//       color: Colors.grey[100],
//       elevation: 05,
//       child: Container(
//         alignment: Alignment.center,
//         height: 100,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ListTile(
//             title: Text(
//               category.name,
//               textAlign: TextAlign.center,
//             ),
//             onTap: () {
//               Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                       builder: (context) => SingleCategory(category)));
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }
