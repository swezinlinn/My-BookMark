import 'package:flutter/material.dart';
import 'package:my_bookmarks/page/add_bookmark_page.dart';
import 'package:my_bookmarks/page/view_bookmark_page.dart';

void navigateToViewBookMarkPage(context) =>
    Navigator.of(context).push(MaterialPageRoute(builder : (context) => ViewBookMarkPage()));

void navigateToAddBookMarkPage(context) =>
    Navigator.of(context).push(MaterialPageRoute(builder : (context) => AddBookMarkPage()));
