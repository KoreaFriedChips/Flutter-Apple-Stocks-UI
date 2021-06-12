import 'dart:convert';

import 'package:stockapp/models/stock.dart';
import 'package:http/http.dart' as http;

class Webservice {
  Future<List<Stock>> getStocks() async {
    final url =
        "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=IBM&interval=5min&apikey=K2L5DTAZENCZCPV9";

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      Iterable json = jsonDecode(response.body);
      print(json);
      return json.map((stock) => Stock.fromJson(stock)).toList();
    } else {
      throw Exception("Error fetching stocks");
    }
  }
}
