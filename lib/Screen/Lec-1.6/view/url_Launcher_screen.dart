import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Provider/Url_provider.dart';

class UrlLauncherScreen extends StatelessWidget {
  const UrlLauncherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LauncherProvider launcherProvider =
        Provider.of<LauncherProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.account_circle_outlined,
          color: Colors.lightBlueAccent,
          size: 32,
        ),
        centerTitle: true,
        title: const Text(
          'Contact Us',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28, color: Colors.blue),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const SizedBox(
              height: 6,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'if you have any queries, get in touch with',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Text(
              'us. We will be happy to help you!',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
              child: GestureDetector(
                onTap: () {
                  launcherProvider.phoneLauncher();
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.aod_outlined,
                      color: Colors.blue,
                      size: 37,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      '+91 91730 74442',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 65,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
              child: InkWell(
                onTap: () {
                  launcherProvider.mailLauncher();
                },
                child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.mail_outline,
                      color: Colors.blue,
                      size: 37,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      'info@xyzmail.com',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.blue,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(9),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Social Media',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 23),
                  ),
                  Divider(
                    height: 37,
                    color: Colors.blue,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () {
                          launcherProvider.gitLauncher();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Image.asset(
                              'assets/github.png',
                              height: 35,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Text(
                              'Sanju Afre',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Divider(
                        height: 37,
                        color: Colors.blue,
                        endIndent: 30,
                        indent: 30,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      InkWell(
                        onTap: () {
                          launcherProvider.instLauncher();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 25,
                            ),
                            Image.asset(
                              'assets/ins.png',
                              height: 42,
                            ),
                            SizedBox(
                              width: 21,
                            ),
                            Text(
                              'sanju_0812',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        height: 37,
                        color: Colors.blue,
                        endIndent: 30,
                        indent: 30,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 6,
                      ),
                      InkWell(
                        onTap: () {
                          launcherProvider.linkLauncher();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 30,
                            ),
                            Image.asset(
                              'assets/LinkedIn.webp',
                              height: 35,
                            ),
                            SizedBox(
                              width: 22,
                            ),
                            Text(
                              'Sanju Afre',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 19),
                            ),
                          ],
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
    );
  }
}
