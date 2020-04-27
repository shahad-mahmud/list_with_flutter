import 'package:flutter/material.dart';

import 'quote.dart';

// ignore: must_be_immutable
class QuoteCard extends StatelessWidget {
  Quote quote;
  Function delete;

  QuoteCard({this.quote, this.delete});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(
              height: 8.0,
            ),
            FlatButton(
              onPressed: delete,
              child: Text('Delete this'),
              color: Colors.red[200],
            ),
          ],
        ),
      ),
    );
  }
}
