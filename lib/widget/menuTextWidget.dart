import 'package:flutter/material.dart';
import 'package:flutter_mine/util/mineStyleUtil.dart';

class MenuText extends StatelessWidget {
  const MenuText({
    Key? key,
    this.isSelect: true,
    this.title,
  }) : super(key: key);

  final bool isSelect;
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12),
      color: Colors.black.withOpacity(0),
      child: Text(title ?? '??', textAlign: TextAlign.center, style: isSelect ? MineTextStyle.big : MineTextStyle.bigWithOpacity)
    );
  }
}