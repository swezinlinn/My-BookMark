import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/page/add_bookmark_page.dart';
import 'package:my_bookmarks/page/view_bookmark_page.dart';

void navigateToViewBookMarkPage(Bookmark bookmark, context) =>
    Navigator.of(context).push(MaterialPageRoute(builder : (context) => ViewBookMarkPage(bookmark)));

Future navigateToAddBookMarkPage(BuildContext context) {
  return Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => AddBookMarkPage()));
}
