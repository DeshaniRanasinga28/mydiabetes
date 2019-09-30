import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';


class WebScreen extends StatefulWidget{
 final String url;
  WebScreen({Key key, this.url}) : super (key: key);

  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen>{

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      appBar: new AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFFAC0808),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.close, color: Colors.white,),
            onPressed: () => Navigator.of(context).pop(null),
          ),
        ],
        leading: new Container(),
      ),
      url: widget.url,
      withZoom: true,
    );
  }

}


