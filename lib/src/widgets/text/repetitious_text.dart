import 'package:flutter/material.dart';

class RepetitiousText extends StatelessWidget {
  String title;
  RepetitiousText(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40, right: 210),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 20.0,
            fontFamily: 'NotoSans',
            fontWeight: FontWeight.w400),
      ),
    );
  }
}
