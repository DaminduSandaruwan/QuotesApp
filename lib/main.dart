import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes=[
    Quote(author: 'Oscar Wilde', text:'Be yourself, everyone else already taken'),
    Quote(author: 'Oscar Wilde', text:'I have nothing to declare expect my genius'),
    Quote(author: 'Oscar Wilde', text:'The truth is rarely pure and never simple')

  ];

//  Widget quoteTemplate(quote){
//    return QuoteCard(quote:quote);
//  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
         children: quotes.map((quote)=> QuoteCard(quote:quote)).toList(),

        //children: quotes.map((quote)=> quoteTemplate(quote)).toList(),

//        children: quotes.map((quote) => Text(quote)).toList(),
//        children: quotes.map((quote){
//          return Text('${quote.text} - ${quote.author}');
//        }).toList(),
      ),
    );
  }
}

