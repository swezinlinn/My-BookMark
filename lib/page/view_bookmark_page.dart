import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewBookMarkPage extends StatefulWidget {
  @override
  _ViewBookMarkPageState createState() => _ViewBookMarkPageState();
}

class _ViewBookMarkPageState extends State<ViewBookMarkPage> {
  var _isLoadingWebPage = false;

  void _setLoadingWebPageStatus(status) {
    setState(() {
      _isLoadingWebPage = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("View BookMark"),
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            WebView(
                onPageFinished: (url) => _setLoadingWebPageStatus(false),
                onPageStarted: (url) => _setLoadingWebPageStatus(true),
                initialUrl: "https://flutter.dev"),
            _isLoadingWebPage ? CircularProgressIndicator() : Container(),
          ],
        ));
  }
}
