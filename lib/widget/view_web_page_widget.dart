import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ViewWebPageWidget extends StatefulWidget{
  String url;
  ViewWebPageWidget(this.url);

  @override
  State<StatefulWidget> createState() => _ViewWebPageWidgetState();
}

class _ViewWebPageWidgetState extends State<ViewWebPageWidget> {
  var _isLoadingWebPage = false;

  void _setLoadingWebPageStatus(status) {
    setState(() {
      _isLoadingWebPage = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          alignment: Alignment.center,
          children: [
            WebView(
                onPageFinished: (url) => _setLoadingWebPageStatus(false),
                onPageStarted: (url) => _setLoadingWebPageStatus(true),
                initialUrl: widget.url),
            _isLoadingWebPage ? CircularProgressIndicator() : Container(),
          ],
        ));
  }
}
