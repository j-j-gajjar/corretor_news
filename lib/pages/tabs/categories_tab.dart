// import 'package:flutter/material.dart';

// import '../model/post_entity.dart';
// import '../network/wp_api.dart';
// import '../pages/single_category.dart';

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
