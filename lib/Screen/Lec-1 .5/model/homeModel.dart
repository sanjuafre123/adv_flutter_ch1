import 'dart:collection';

class QueueModel {
  String? quote;
  String? author;

  List<QueueModel> quoteModelList = [];

  QueueModel({this.author, this.quote});

  factory QueueModel.fromQuote(Map m1) {
    return QueueModel(quote: m1['quote'], author: m1['author']);
  }

  QueueModel.toList(List l1) {
    for (int i = 0; i < l1.length; i++) {
      quoteModelList.add(QueueModel.fromQuote(l1[i]));
    }
  }
}

