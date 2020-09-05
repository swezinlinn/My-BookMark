import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(AddBookMarkPage());
}

class AddBookMarkPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Add a new bookmark"),
        ),
    );
  }
}