import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_mine/util/mineStyleUtil.dart';

class CommentBottomSheet extends StatelessWidget {
  const CommentBottomSheet ({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.zero,
      decoration: BoxDecoration(color: MineColor.back1, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(4),
            height: 32,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.2), borderRadius: BorderRadius.circular(2)),
          ),
          Container(
            height: 24,
            alignment: Alignment.center,
            child: Text('233CommentRecords', style: MineTextStyle.small),
          ),
          Expanded(
            child: ListView(
              physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
              children: <Widget> [
                _CommentRow(),
                _CommentRow(),
                _CommentRow(),
                _CommentRow(),
                _CommentRow(),
                _CommentRow(),
                _CommentRow(),
                _CommentRow(),
                _CommentRow(),
                _CommentRow(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CommentRow extends StatelessWidget {
  const _CommentRow ({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var info = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text('FakeUserX', style: MineTextStyle.smallWithOpacity),
        Container(height: 2),
        Text('This is a comment for test', style: MineTextStyle.normal)
      ]
    );

    Widget right = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.favorite, color: Colors.white),
        Text('666', style: MineTextStyle.small)
      ],
    );

    right = Opacity(opacity: 0.3, child: right);

    var avatar = Container(
      margin: EdgeInsets.fromLTRB(0, 8, 10, 8),
      child: Container(
        height: 36,
        width: 36,
        child: ClipOval(
          child: Image.network("https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif", fit: BoxFit.cover),
        ),
      ),
    );
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        children: <Widget>[
          avatar,
          Expanded(child: info),
          right
        ],
      ),
    );
  }
}