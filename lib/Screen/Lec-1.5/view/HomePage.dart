
import 'package:adv_flutter_ch1/Utils/globle.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/homeProvider.dart';
import '../model/homeModel.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    quoteModelText = QueueModel.toList(quotesList);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    QuoteProvider QuoteProviderFalse =
        Provider.of<QuoteProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text(
          'Quotes',
          style: TextStyle(fontSize: 33, fontWeight: FontWeight.w500,color: Colors.white),
        ),
      ),
      body: Card(
        child: Form(
          key: formKey,
          child: ListView.builder(
            itemCount: quoteModelText.quoteModelList.length,
            itemBuilder: (context, index) => Card(
              color: Colors.teal[100],
              child: ListTile(
                leading: Text('${index + 1}'),
                title: Text(quoteModelText.quoteModelList[index].quote!),
                subtitle: Text(quoteModelText.quoteModelList[index].author!),
                trailing: IconButton(
                  onPressed: () {
                    QuoteProviderFalse.removeQuote(index);
                  },
                  icon: Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text(
                'Enter Quote and Author Name:',
              ),
              actions: [
                inputTextField(label: 'Quote', controller: txtQuote),
                SizedBox(
                  height: height * 0.020,
                ),
                inputTextField(label: 'Author', controller: txtAuthor),
                SizedBox(
                  height: height * 0.040,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          bool response = formKey.currentState!.validate();
                          if (response) {
                            QuoteProviderFalse.addDetailsProvider();
                            QuoteProviderFalse.addQuote();
                            Navigator.of(context).pop();
                          }
                          formKey.currentState!.reset();
                        },
                        child: Text('OK')),
                    SizedBox(
                      width: width * 0.070,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                  ],
                )
              ],
            ),
          );
        },
        child: Icon(Icons.add,color: Colors.white,),
      ),
    );
  }

  TextFormField inputTextField(
      {required label, required TextEditingController controller}) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Required';
        }
        return null;
      },
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(
          color: Colors.black,
        ),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
      ),
    );
  }
}

GlobalKey<FormState> formKey = GlobalKey();
QueueModel quoteModelText = QueueModel();
