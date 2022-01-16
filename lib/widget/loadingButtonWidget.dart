import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mine/util/mineStyleUtil.dart';
import 'package:flutter_mine/util/textUtil.dart';
import 'package:tapped/tapped.dart';

class AdMusicLoadingButton extends StatelessWidget {
  const AdMusicLoadingButton({
    Key? key,
    required this.buttonText,
    this.onTap,
    this.isLoading: false,
    this.primary: true,
    this.margin,
    this.height,
    this.backgroundColor,
    this.shadow: false,
    this.textColor,
  }) : super(key: key);

  final String buttonText;
  final Function? onTap;
  final bool isLoading;
  final bool primary;
  final bool shadow;
  final EdgeInsets? margin;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    var body = Container(
      height: height ?? 44,
      width: double.infinity,
      padding: margin ?? EdgeInsets.symmetric(horizontal: 60),
      color: MineColor.clear,
      child: Container(
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          shape: StadiumBorder(), 
          color: backgroundColor ?? (primary ? MineColor.orange : MineColor.white), 
          shadows: shadow ? [BoxShadow(color: MineColor.black.withOpacity(0.1))] : []
        ),
        child: IndexedStack(
          alignment: Alignment.center,
          index: isLoading ? 0 : 1,
          children: <Widget>[
            CupertinoActivityIndicator(),
            Container(
              child: AdMucisText.normal(
                buttonText,
                enableOffset: true,
                style: TextStyle(fontWeight: FontWeight.w600, color: textColor ?? (primary ? MineColor.white : MineColor.orange)),
              )
            )
          ]
        ),
      ),
    );
    return Container(
      child: Tapped(
        onTap: () {
          if(!isLoading) {
            onTap?.call();
          }
        },
        child: body,
      ),
    );
  }
}