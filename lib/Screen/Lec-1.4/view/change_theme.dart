import 'package:flutter/material.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black54,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_sharp,
                    size: 30,
                  ),
                  Icon(
                    Icons.add_circle_outline_sharp,
                    size: 30,
                  ),
                ],
              ),
            ),
            CircleAvatar(
              radius: 80,
            ),
            Text(
              'Sanju',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w400,color: Colors.white),
            ),
            SizedBox(height: height*0.1,),
            ListTile(
              leading: Icon(Icons.dark_mode_rounded,size: 45,),
              title: Text('Dark mode',style: TextStyle(color: Colors.white),
              ),
              trailing: Switch(
                onChanged: (value) {

                },
                value: ,
              )
            )
          ],
        ),
      ),
    );
  }
}
