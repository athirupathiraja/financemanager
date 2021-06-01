import 'package:flutter/material.dart';

class Transaction {
  final int id;
  final String name;
  final double value;
  final String category;
  final IconData iconData;
  final Color color;

  const Transaction({
    required this.id,
    required this.name,
    required this.value,
    required this.category,
    required this.iconData,
    required this.color,
  });
}

class Transactions with ChangeNotifier {
  List<Transaction> transactions = [
    Transaction(
      id: 1,
      name: 'Metro Groceries',
      value: 128.67,
      category: 'Groceries',
      iconData: Icons.local_grocery_store,
      color: Color(0xfffe91ca),
    ),
    Transaction(
      id: 2,
      name: 'Dinner',
      value: 49.99,
      category: 'Meals',
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    ),
    Transaction(
      id: 3,
      name: 'PC game',
      value: 27.35,
      category: 'Gaming',
      iconData: Icons.videogame_asset,
      color: Color(0xfff6d743),
    ),
    Transaction(
      id: 4,
      name: 'Poker',
      value: 34.99,
      category: 'Entertainment',
      iconData: Icons.casino,
      color: Color(0xff75b51),
    ),
    Transaction(
      id: 5,
      name: 'Shopify',
      value: 113.99,
      category: 'Business',
      iconData: Icons.work,
      color: Color(0xff40bad5),
    ),
    Transaction(
      id: 6,
      name: 'Pizza Pizza',
      value: 25.35,
      category: 'Meals',
      iconData: Icons.fastfood,
      color: Color(0xffe8505b),
    )
  ];
}

class SectionData {
  String categoryInSection;
  double percent;
  Color color;

  SectionData(this.categoryInSection, this.percent, this.color);
}

class SectionDataList extends Transactions {
  List<SectionData> sectionData = [];

  String categoryInSection = '';
  double percent = 0;
  Color color = Colors.white;

  String getCategoryInSection(int i) {
    List<String> categories = [
      'Groceries',
      'Business',
      'Entertainment',
      'Meals',
      'Gaming'
    ];
    return categoryInSection = categories[i];
  }

  Color getColor(int i) {
    List<Color> colors = [
      Color(0xfffe91ca),
      Color(0xff40bad5),
      Color(0xff75b51),
      Color(0xffe8505b),
      Color(0xfff6d743),
    ];
    return color = colors[i];
  }

  double getPercent(String category) {
    double total = 0;
    double valueOfCategory = 0;
    for (int i = 0; i < transactions.length; i++) {
      if (category == transactions[i].category) {
        valueOfCategory = valueOfCategory + transactions[i].value;
      }
      total = total + transactions[i].value;
    }
    return percent = (valueOfCategory / total) * 100;
  }

  void createSectionDataList() {
    for (int i = 0; i <= 4; i++) {
      String category = getCategoryInSection(i);
      double percent = getPercent(category);
      Color colors = getColor(i);
      if (percent != 0) {
        print(percent);
        sectionData = List<SectionData>.generate(
            1, (i) => SectionData(category, percent, colors));
        // sectionData.add(SectionData(category, percent, colors));
      } else {
        print("fail");
      }
    }
  }
}
