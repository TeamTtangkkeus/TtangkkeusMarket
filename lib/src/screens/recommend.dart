import 'package:flutter/material.dart';
import '../widgets/text/repetitious_text.dart';
import 'package:ttangkkeusmarket/src/widgets/carousel_list.dart';
import 'package:ttangkkeusmarket/src/widgets/list_item.dart';

class RecommendTab extends StatelessWidget {
  const RecommendTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: CarouselSliderWidget()),
          SizedBox(
              // height: 100,
              ),
          RepetitiousText("도움이 필요한 상품"),
          Expanded(child: ListItems()),
        ],
      ),
    );
    // return Container(
    //   color: Colors.orange,
    //   child: const Center(
    //     child: Text(
    //       "RECOMMEND TAB",
    //       style: TextStyle(fontSize: 24, color: Colors.white),
    //     ),
    //   ),

    // );
  }
}
