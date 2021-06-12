import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stockapp/models/news_article.dart';
import 'package:stockapp/models/stock.dart';
import 'package:stockapp/services/webservice.dart';
import 'package:stockapp/widgets/news_list.dart';
import 'package:stockapp/widgets/stock_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _expanded = false;

  final result = Webservice().getStocks();
  final List<Stock> stocks = Stock.getAll();
  final List<NewsArticle> articles = NewsArticle.getAll();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Stocks",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "June 2",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Edit",
                        style: TextStyle(
                          color: Colors.blue[200],
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: SizedBox(
                      height: 50,
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: "Search",
                          filled: true,
                          fillColor: Colors.grey[800],
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height - 310,
                    child: StockList(stocks: stocks),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: AnimatedContainer(
              height: _expanded ? 800 : 210,
              duration: Duration(
                milliseconds: 500,
              ),
              curve: Curves.easeInOut,
              child: NewsList(
                articles: articles,
                onDragUpdate: (details) {
                  if (details.primaryDelta! < 0) {
                    setState(() {
                      _expanded = true;
                    });
                  } else {
                    setState(() {
                      _expanded = false;
                    });
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
