import 'package:flutter/material.dart';
import 'package:flutter_mine/widget/selectTextWidget.dart';
import 'package:tapped/tapped.dart';

class Header extends StatefulWidget {
  final Function? onSearch;
  const Header({
    Key? key,
    this.onSearch,
  }) : super(key: key);
  
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int currentSelect = 0;
  @override
  Widget build(BuildContext context) {
    List<String> list = ['Recommend', 'Local'];
    List<Widget> headList = [];
    for(var i = 0 ; i < list.length; ++i)
    {
      headList.add(Expanded(
        child: GestureDetector(
          child: Container(child: SelectText(title: list[i], isSelect: i == currentSelect)),
          onTap: () {
            setState(() { currentSelect = i; });
          }
        )
      ));
    }

    Widget headSwitch = Row(children: headList);
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget> [
          Expanded(
            child: Tapped(
              child: Container(
                color: Colors.black.withOpacity(0),
                padding: EdgeInsets.all(4),
                alignment: Alignment.centerLeft,
                child: Icon(Icons.search, color: Colors.white.withOpacity(0.66)),
              ),
              onTap: widget.onSearch,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black.withOpacity(0),
              alignment: Alignment.center,
              child: headSwitch,
            ),
          ),
          Expanded(
            child: Tapped(
              child: Container(
                color: Colors.black.withOpacity(0),
                padding: EdgeInsets.all(4),
                alignment: Alignment.centerLeft,
                child: Icon(Icons.tv, color: Colors.white.withOpacity(0.66)),
              ),
            ),
          )
        ],
      ),
    );
  }
}