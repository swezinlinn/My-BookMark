import 'package:flutter/material.dart';
import 'package:my_bookmarks/model/bookmark.dart';
import 'package:my_bookmarks/page/add_bookmark_page.dart';
import 'package:my_bookmarks/util/navigation_util.dart';
import 'package:my_bookmarks/widget/bookmark_list_widget.dart';

class BookMarkPage extends StatefulWidget {
  @override
  _BookMarkPageState createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
  List<Bookmark> bookmarkList = [
    Bookmark("Flutter", "https://flutter.dev"),
    Bookmark("Google", "https://google.com")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("My Bookmarks")),
        body: BookmarkListWidget(bookmarkList),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          icon: Icon(Icons.add),
          label: Text("Add"),
          onPressed: () => onAddButtonPressed(context)
    ),
    );
  }

  void onAddButtonPressed(BuildContext context) async{
    final result = await navigateToAddBookMarkPage(context);
    if(result != null && result is Bookmark){
      setState(() {
        bookmarkList.add(result);
      });
    }
  }
}

