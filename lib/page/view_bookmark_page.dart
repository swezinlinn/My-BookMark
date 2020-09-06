import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/widget/view_web_page_widget.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewBookMarkPage extends StatelessWidget {
  Bookmark bookmark;
  ViewBookMarkPage(this.bookmark);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(title : Text(bookmark.title)),
       body: ViewWebPageWidget(bookmark.link),
     );
  }

}

