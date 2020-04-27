import 'package:flutter/material.dart';

import 'quote.dart';

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

  Widget quoteCardFunc(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.quote,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.deepOrange,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }

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
          return quoteCardFunc(qu);
        }).toList(),
      ),
    );
  }
}
