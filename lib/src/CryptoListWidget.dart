import 'package:flutter/material.dart';

class CryptoListWidget extends StatelessWidget {
  final List<MaterialColor> _colors = [Colors.blue, Colors.indigo, Colors.red];

  final List _currencies;

  CryptoListWidget(this._currencies);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "Cryptocurrency App",
      home: Scaffold(
        body: _buildBody(),
        backgroundColor: Colors.blue,
      ),
    );
  }

  Widget _buildBody() {
    return Container(
      margin: EdgeInsets.fromLTRB(8.0, 56.0, 8.0, 0.0),
      child: Column(
        children: <Widget>[_getAppTitleWidget(), _getListViewWidget()],
      ),
    );
  }

  Widget _getAppTitleWidget() {
    return Text(
      "Cryptocurrency",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0),
    );
  }

  Widget _getListViewWidget() {
    return ListView.builder(
      itemCount: _currencies.length,
      itemBuilder: (context, index) {
        final Map currency = _currencies[index];

        final MaterialColor color = _colors[index % _colors.length];
      },
    );
  }
}
