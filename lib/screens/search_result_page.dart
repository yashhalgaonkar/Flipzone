// import 'package:flutter/material.dart';
// import 'package:flip_zone/constants.dart';

// class SearchResultPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
//         child: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               //*Search Bar=====================
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Expanded(
//                       child: Container(
//                         child: TextField(
//                           decoration: kTextInputFieldDecoration,
//                         ),
//                       ),
//                     ),
//                     const SizedBox(width: kDefaultPadding / 2),
//                     Icon(
//                       Icons.close,
//                       color: Colors.black,
//                     )
//                   ],
//                 ),
//               ),
//               //*==================TABS============================

//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
//                 child: Row(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 50.0,
//                             alignment: Alignment.center,
//                             child: Text(
//                               'Products',
//                               style: TextStyle(
//                                 color: accentPink,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             height: 2.0,
//                             color: accentPink,
//                           )
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       child: Column(
//                         children: [
//                           Container(
//                             height: 50.0,
//                             alignment: Alignment.center,
//                             child: Text(
//                               'History',
//                               style: TextStyle(
//                                 color: Colors.grey,
//                                 fontWeight: FontWeight.w600,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             height: 2.0,
//                             color: Colors.transparent,
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
