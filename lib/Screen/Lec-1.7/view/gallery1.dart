import 'package:add_flutter/Screen/Lec-1.7/view/Hidescreen.dart';
import 'package:add_flutter/Utils/ImageList.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/gallery_provider.dart';

class Gallery1Screen extends StatelessWidget {
  const Gallery1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    GalleryProvider galleryProviderFalse = Provider.of(
      context,
      listen: false,
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          size: 28,
          color: Colors.black,
        ),
        elevation: 0.5,
        scrolledUnderElevation: 0.1,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        centerTitle: true,
        title: const Text(
          'Gallery',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 27,
            letterSpacing: 0.7,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 10, top: 15),
            child: Column(
              children: [
                Row(
                  children: [
                    DropdownButton(
                      items: const [
                        DropdownMenuItem(
                          child: Text(
                            'Albums',
                            style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      width: 179,
                    ),
                    Icon(
                      Icons.search_outlined,
                      size: 28,
                      color: Colors.grey.shade700,
                    ),
                    PopupMenuButton(
                      itemBuilder: (context) => popUpMenuItems,
                      iconColor: Colors.black,
                      onSelected: (value) async {
                        if (value == 1) {
                          await galleryProviderFalse.authication();
                          if (galleryProviderFalse.didAuthenticate) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const HideScreen(),
                              ),
                            );
                          }
                        }
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 12,right: 6),
                  child: Column(
                    children: [
                      Wrap(
                        spacing: width * 0.032,
                        children: [
                          ...List.generate(
                            galleryImgList.length,
                            (index) => Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Column(
                                children: [
                                  Container(
                                    height: height * 0.1422,
                                    width: width * 0.283,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(18),
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            galleryImgList[index]['img']),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: height * 0.07,
                                    width: width * 0.275,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          galleryImgList[index]['cat'],
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: width * 0.044),
                                        ),
                                        Text(
                                          galleryImgList[index]['num'],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: width * 0.034,
                                              color: Colors.grey.shade600),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<PopupMenuEntry> popUpMenuItems = [
  const PopupMenuItem(
    value: 0,
    child: Text(
      'setting',
    ),
  ),
  const PopupMenuItem(
    value: 1,
    child: Text(
      'Show Hidden Folder',
    ),
  )
];
