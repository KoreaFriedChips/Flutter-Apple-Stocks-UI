class Stock {
  final String symbol;
  final String company;
  final double price;
  final String change;

  Stock(
      {required this.symbol,
      required this.company,
      required this.price,
      required this.change});

  factory Stock.fromJson(Map<String, dynamic> json) {
    return Stock(
        company: json["description"],
        change: json["change"],
        symbol: json["symbol"],
        price: json["price"].toDouble());
  }

  static List<Stock> getAll() {
    List<Stock> stocks = <Stock>[];
    stocks.add(Stock(
        company: "Apple INC.", symbol: "AAPL", price: 125.06, change: "+0.78"));
    stocks.add(Stock(
        company: "Alphabet", symbol: "ALPH", price: 860.05, change: "+0.56"));
    stocks.add(Stock(
        company: "General Electronic",
        symbol: "GE",
        price: 56.00,
        change: "-0.78"));
    stocks.add(Stock(
        company: "Home Depot", symbol: "HD", price: 178.76, change: "+0.22"));
    stocks.add(Stock(
        company: "Evergreen Solar",
        symbol: "EVR",
        price: 9.88,
        change: "+1.78"));
    stocks.add(Stock(
        company: "Facebook", symbol: "FB", price: 200.45, change: "-2.43"));
    stocks.add(Stock(
        company: "Samsung", symbol: "SAM", price: 134.87, change: "-5.10"));
    stocks.add(Stock(
        company: "Snapchat", symbol: "SNAP", price: 45.32, change: "+2.22"));
    stocks.add(Stock(
        company: "Microsoft", symbol: "MSOFT", price: 408.89, change: "+3.13"));
    stocks.add(Stock(
        company: "Google", symbol: "GOOG", price: 1800.69, change: "+2.11"));

    return stocks;
  }
}
