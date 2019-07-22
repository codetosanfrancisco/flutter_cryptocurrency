import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart';

Future<List> getCurrencies() async {
  String apiUrl = 'https://api.coinmarketcap.com/v1/ticker/?limit=50';

  Response response = await get(apiUrl);

  return json.decode(response.body);
}
