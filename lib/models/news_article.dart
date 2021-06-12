class NewsArticle {
  final String title;
  final String publication;
  final String imageURL;

  NewsArticle(
      {required this.title, required this.publication, required this.imageURL});

  static List<NewsArticle> getAll() {
    List<NewsArticle> articles = <NewsArticle>[];
    articles.add(NewsArticle(
        title:
            "The Economic Recovery Is Here. It's Unlike Anything You've Seen",
        publication: "THE WALL STREET JOURNAL",
        imageURL: "https://images.wsj.net/im-346845?width=1280&size=1"));
    articles.add(NewsArticle(
        title:
            "Air Canada's \$10M bonuses 'unacceptable' while laying off staff, Trudeau says",
        publication: "Global News",
        imageURL:
            "https://www.cp24.com/polopoly_fs/1.5423974.1620780000!/httpImage/image.jpg_gen/derivatives/landscape_300/image.jpg"));
    articles.add(NewsArticle(
        title:
            "Canada finance minister says G7 deal on tech tax is 'within reach'",
        publication: "REUTERS",
        imageURL:
            "https://i.cbc.ca/1.5691279.1599091831!/fileImage/httpImage/image.JPG_gen/derivatives/16x9_780/cda-shuffle-20200818.JPG"));
    articles.add(NewsArticle(
        title:
            "TSX tops 20,000 for first time ever as loonie and oil at multi-year highs",
        publication: "CBCNEWS",
        imageURL:
            "https://i.cbc.ca/1.4604408.1522851005!/fileImage/httpImage/image.jpg_gen/derivatives/16x9_780/tsx-sign.jpg"));

    return articles;
  }
}
