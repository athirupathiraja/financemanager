import 'package:flutter/material.dart';
import 'header.dart';
import 'bottomNavigationBar.dart';
import 'transactionCard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.short_text),
          onPressed: () {},
        ),
        centerTitle: true,
        title: const Text(
          "Expenses Manager",
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'sans-serif',
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.person_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          Column(children: <Widget>[
            Header(),
          ]),
          TransactionCard(),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigator(
        centerItemText: 'add',
        color: Colors.grey,
        backgroundColor: Colors.white,
        selectedColor: Colors.red,
        notchedShape: CircularNotchedRectangle(),
        onTabSelected: 0,
        items: [
          BottomNavigatorItem(iconData: Icons.analytics, text: 'analytics'),
          BottomNavigatorItem(iconData: Icons.search, text: 'search'),
          BottomNavigatorItem(iconData: Icons.account_circle, text: 'profile'),
          BottomNavigatorItem(iconData: Icons.more_horiz, text: 'more'),
        ],
      ),

      //
    );
  }
}
