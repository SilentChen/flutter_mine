
import 'package:flutter_mine/util/mineStyleUtil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mine/widget/menuTextWidget.dart';

enum PageTag {
  home,
  follow,
  msg,
  me,
}

class TabBar extends StatelessWidget {
  final Function(PageTag) ? onTabSwitch;
  final Function() ? onAddButton;

  final bool hasBackground;
  final PageTag ? current;

  const TabBar({
    Key ? key,
    this.onTabSwitch,
    this.current,
    this.onAddButton,
    this.hasBackground: false
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    final EdgeInsets padding = MediaQuery.of(context).padding;
    Widget row = Row(
      children: <Widget>[
        Expanded(child: GestureDetector(
          child: MenuText(isSelect: current == PageTag.home, title: 'Home'),
          onTap: () => onTabSwitch?.call(PageTag.home),
        )),
        Expanded(child: GestureDetector(
          child: MenuText(isSelect: current == PageTag.follow, title: 'Follow'),
          onTap: () => onTabSwitch?.call(PageTag.follow),
        )),
        Expanded(child: GestureDetector(
          child: MenuText(isSelect: current == PageTag.msg, title: 'Message'),
          onTap: () => onTabSwitch?.call(PageTag.msg),
        )),
        Expanded(child: GestureDetector(
          child: MenuText(isSelect: current == PageTag.me, title: 'Me'),
          onTap: () => onTabSwitch?.call(PageTag.me),
        ))
      ],
    );

    return Container(
      color: hasBackground ? MineColor.back2 : MineColor.back2.withOpacity(0),
      child: Container(
        padding: EdgeInsets.only(bottom: padding.bottom),
        height: 50 + padding.bottom,
        child: row,
      )
    );
  }
}
