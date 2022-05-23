import 'package:flutter/material.dart';

class ListItems extends StatelessWidget {
  const ListItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentWdith = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SizedBox(
        height: 170.0,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          itemCount: 10,
          separatorBuilder: (context, index) {
            return const SizedBox(width: 12);
          },
          itemBuilder: (context, index) {
            return buildCard(index);
          },
        ),
      ),
    );
  }
}

Widget buildCard(int index) => Container(
      color: Colors.amber,
      width: 115.0,
      height: 138.0,
      child: Center(
        child: Text('$index'),
      ),
    );

// SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         padding: const EdgeInsets.all(10),
//         child: Row(
//           children: [
//             buildCard(1),
//             const SizedBox(width: 10),
//             buildCard(2),
//             const SizedBox(width: 10),
//             buildCard(3),
//             const SizedBox(width: 10),
//             buildCard(4),
//             const SizedBox(width: 10),
//             buildCard(5),
//             const SizedBox(width: 10),
//             buildCard(6),
//             const SizedBox(width: 10),
//           ],
//         ),
//       ),