
import 'package:flutter/cupertino.dart';

enum PageTag{
  home,
  follow,
  msg,
  me,
}

class TabBar extends StatelessWidget {
  final Function(PageTag) ? onTabSwitch;
}