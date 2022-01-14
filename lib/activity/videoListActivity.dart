import 'package:flutter/material.dart';

class VideoListActivity extends ChangeNotifier {

  VideoListActivity({
    this.loadMoreCount = 1,
    this.preloadCount  = 3,
    this.releaseCount  = 5,
  });

  final int loadMoreCount;
  final int preloadCount;
  final int releaseCount;

}