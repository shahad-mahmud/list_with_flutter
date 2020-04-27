import 'package:flutter/material.dart';

import 'quote.dart';
import 'quotecart.dart';

void main() {
  runApp(MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> q = [
    Quote(quote: 'This is test qute 1', author: 'auth 1'),
    Quote(quote: 'This is test qute 2', author: 'auth 2'),
    Quote(quote: 'This is test qute 3', author: 'auth 3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: q.map((qu) {
          return QuoteCard(
            quote: qu,
            delete: () {
              setState(() {
                q.remove(qu);
              });
            },
          );
        }).toList(),
      ),
    );
  }
}
