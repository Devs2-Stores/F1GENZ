import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HangQuocTai',
      home: const WebviewPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WebviewPage extends StatelessWidget {
  const WebviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://hangquoctai.myharavan.com',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
