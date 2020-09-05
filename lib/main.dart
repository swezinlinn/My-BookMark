import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/page/bookmarks_page.dart';

void main() {
  runApp(MyBookmarkApp());
}

class MyBookmarkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BookMarkPage());
  }
}



