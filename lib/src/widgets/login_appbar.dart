import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  const LoginAppBar(
      {Key? key, required this.appBar, required this.title, this.center = true})
      : super(key: key);

  final AppBar appBar;
  final String title;
  final bool center;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(LineIcons.times),
        iconSize: 32.0,
        color: Colors.black,
        onPressed: () => Navigator.of(context).pop(),
      ),
      centerTitle: center,
      title: Text(
        "$title",
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'SF',
            fontSize: 24.0,
            fontWeight: FontWeight.w700),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
