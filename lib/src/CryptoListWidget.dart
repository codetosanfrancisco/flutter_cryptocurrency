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
    return Container(
        child: Text(
      "Cryptocurrency",
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0),
    ));
  }

  Widget _getListViewWidget() {
    return Flexible(
      child: ListView.builder(
        itemCount: _currencies.length,
        itemBuilder: (context, index) {
          final Map currency = _currencies[index];

          final MaterialColor color = _colors[index % _colors.length];

          return _getListItemWidget(currency, color);
        },
      ),
    );
  }

  CircleAvatar _getLeadingWidget(String currencyName, MaterialColor color) {
    return CircleAvatar(child: Text(currencyName[0]), backgroundColor: color);
  }

  Text _getTitleWidget(String currencyName) {
    return Text(
      currencyName,
      style: TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Text _getSubtitleWidget(String priceUsd, String percentageChange) {
    return Text('\$$priceUsd\n1 hour: $percentageChange%');
  }

  ListTile _getListTile(Map currency, MaterialColor color) {
    return ListTile(
      leading: _getLeadingWidget(currency['name'], color),
      title: _getTitleWidget(currency['name']),
      subtitle: _getSubtitleWidget(
          currency['price_usd'], currency['percent_change_1h']),
      isThreeLine: true,
    );
  }

  Container _getListItemWidget(Map currency, MaterialColor color) {
    return Container(
      child: Card(
        child: _getListTile(currency, color),
      ),
      margin: EdgeInsets.only(top: 5.0),
    );
  }
}
