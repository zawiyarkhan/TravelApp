import 'package:flutter/material.dart';
import 'build_drag_icon.dart';


// Widget buildTabBar({
//     required VoidCallback onClicked,
//   }) =>
//       PreferredSize(
//         preferredSize: Size.fromHeight(tabBarHeight - 8),
//         child: GestureDetector(
//           onTap: onClicked,
//           child: AppBar(
//             title: buildDragIcon(), // Icon(Icons.drag_handle),
//             centerTitle: true,
//             bottom: TabBar(
//               tabs: [
//                 Tab(child: Text('Vegetarian')),
//                 Tab(child: Text('Non Vegetarian')),
//               ],
//             ),
//           ),
//         ),
//       );