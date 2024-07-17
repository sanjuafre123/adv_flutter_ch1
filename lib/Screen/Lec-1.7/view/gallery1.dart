import 'package:flutter/material.dart';

class Gallery1Screen extends StatelessWidget {
  const Gallery1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          size: 32,
        ),
        elevation: 1,
        scrolledUnderElevation: 0.1,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Gallery',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 27, letterSpacing: 0.7),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  DropdownButton(
                    items: [
                      DropdownMenuItem(
                        child: Text(
                          'Albums',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                    onChanged: (value) {},
                  ),
                  SizedBox(
                    width: 262,
                  ),
                  Icon(
                    Icons.search_outlined,
                    size: 28,
                    color: Colors.grey.shade700,
                  ),
                  PopupMenuButton(
                    itemBuilder: (context) => popUpMenuItems,
                    onSelected: (value) {},
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<PopupMenuEntry> popUpMenuItems = [
  PopupMenuItem(
    value: 0,
    child: Text(
      'setting',
      style: TextStyle(fontSize: 20),
    ),
  ),
  PopupMenuItem(
    value: 1,
    child: Text(
      'Show Hidden Folder',
      style: TextStyle(fontSize: 17),
    ),
  )
];
