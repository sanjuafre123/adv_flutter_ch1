import 'package:adv_flutter_ch1/Screen/Lec-1%20.5/Provider/homeProvider.dart';
import 'package:adv_flutter_ch1/Screen/Lec-1%20.5/model/homeModel.dart';
import 'package:adv_flutter_ch1/Utils/globle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    quoteModelText = QueueModel.toList(quotesList);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    QuoteProvider QuoteProviderTrue =
        Provider.of<QuoteProvider>(context, listen: true);
    QuoteProvider QuoteProviderFalse =
        Provider.of<QuoteProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Quotes',
          style: TextStyle(fontSize: 33, fontWeight: FontWeight.w500),
        ),
      ),
      body: Card(
        child: ListView.builder(
          itemCount: quoteModelText.quoteModelList.length,
          itemBuilder: (context, index) => ListTile(
            leading: Text('${index + 1}'),
            title: Text(quoteModelText.quoteModelList[index].quote!),
            subtitle: Text(quoteModelText.quoteModelList[index].author!),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                'Enter Quote and Author Name:',
              ),
              actions: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Quote',
                  ),
                ),
                SizedBox(
                  height: height * 0.030,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Author',
                  ),
                ),
                SizedBox(height: height*0.040,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {

                      },child: Text('Ok',style: TextStyle(fontSize: 18),)),
                    SizedBox(width: width*0.070,),
                    GestureDetector(
                        onTap: () {

                        },
                        child: Text('Cancle',style: TextStyle(fontSize: 18),)),
                  ],
                )
              ],
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

QueueModel quoteModelText = QueueModel();
