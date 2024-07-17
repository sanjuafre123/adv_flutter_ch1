import 'package:flutter/material.dart';

import '../../../Utils/globle.dart';

class QuoteProvider extends ChangeNotifier{

  String? quote;
  String? author;

  void addDetailsProvider()
  {
    quote = txtQuote.text;
    author = txtAuthor.text;
    notifyListeners();
  }

  void addQuote(){
    quotesList.insert(0,{'quote' : quote , 'author' : author});
    notifyListeners();
  }

  void removeQuote(int index)
  {
    quotesList.removeAt(index);
    notifyListeners();
  }


}