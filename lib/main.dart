import 'package:flutter/material.dart';
import 'src/CryptoListWidget.dart';
import 'Functions.dart';

void main() async {
  List currencies = await getCurrencies();

  runApp(CryptoListWidget(currencies));
}
