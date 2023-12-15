// import 'package:flutter/material.dart';
//
// import '../data/tests_dummy_data.dart';
// import 'grid_item.dart';
//
// class PopularLabTests extends StatelessWidget {
//   const PopularLabTests({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView(
//       padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 2,
//         childAspectRatio: 0.7,
//         crossAxisSpacing: 20,
//         mainAxisSpacing: 20,
//       ),
//       shrinkWrap:
//           true,
//       physics:
//           const NeverScrollableScrollPhysics(),
//       children: [
//         for (final test in popularTests)
//           GridItem(
//               id: test.id,
//               title: test.title,
//               no_tests: test.no_tests,
//               delay: test.delay,
//               old_expense: test.old_expense,
//               new_expense: test.new_expense)
//       ],
//     );
//   }
// }
