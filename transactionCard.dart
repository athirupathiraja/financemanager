import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'transactions.dart';
import 'transactionItems.dart';

class TransactionCard extends StatefulWidget {
  const TransactionCard();

  @override
  _TransactionCardState createState() => _TransactionCardState();
}

class _TransactionCardState extends State<TransactionCard> {
  int _date = 16;
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final providedTransactions = Provider.of<Transactions>(context);
    return Positioned(
      bottom: 0,
      left: mediaQuery.size.width * .03,
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: mediaQuery.size.width * .94,
        height: mediaQuery.size.height * .50,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
        ),
        child: ListView.builder(
          itemCount: providedTransactions.transactions.length,
          itemBuilder: (context, i) {
            return TransactionItem(providedTransactions.transactions[i]);
          },
        ),
      ),
    );
  }
}
