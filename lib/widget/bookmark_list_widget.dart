import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/widget/bookmark_list_item_widget.dart';

class BookmarkListWidget extends StatelessWidget {
  List<Bookmark> bookmarkList;

  BookmarkListWidget(this.bookmarkList);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: getBookmarkWidgetList()
    );
  }

  List<BookmarkListItemWidget> getBookmarkWidgetList(){
    List<BookmarkListItemWidget> list = [];
    for(Bookmark bookmark in bookmarkList){
      list.add(BookmarkListItemWidget(bookmark));
    }
    return list;
  }
}

