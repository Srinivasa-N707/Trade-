import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class TradingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Facebook Demo',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xa1b10dce),
          title: Text('Trade+'),
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color(0xa1b10dce), // set the background color
            ),
            onPressed: () {
              _launchURL();
            },
            child: Text('Open TradingView'),
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    const url =
        'https://www.tradingview.com/chart/haqK9QXv/?symbol=CRYPTO%3AIOSTUSD';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
