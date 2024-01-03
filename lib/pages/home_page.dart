import 'package:dummy/pages/login_page.dart';
import 'package:dummy/tab/PersonTab.dart';
import 'package:dummy/util/my_tab.dart';
import 'package:flutter/material.dart';

import '../tab/pagefour.dart';
import '../tab/pageone.dart';
import '../tab/pagethree.dart';
import '../tab/pagetwo.dart';

class PageHome extends StatefulWidget {
  const PageHome({super.key});

  void PersonClick(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PersonTab()),
    );
  }

  void BackLogin(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {
  List<Widget> myTabs = const [
    //tab1
    Mytabs(
      iconPath: 'lib/images/sneakers2.png',
    ),

    //tab2
    Mytabs(
      iconPath: 'lib/images/sandals.png',
    ),

    //tab3
    Mytabs(
      iconPath: 'lib/images/shoes.png',
    ),

    //tab4
    Mytabs(
      iconPath: 'lib/images/footwear.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 111, 96, 249),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.arrow_back_rounded,
                color: Colors.grey[800],
                size: 36,
              ),
              onPressed: () {
                widget.BackLogin(context);
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {
                  widget.PersonClick(context);
                  //account button tapped
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //choose your style
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    'Choose your',
                    style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
                  ),
                  Text(
                    'SHOES',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),

            //tab bar

            TabBar(tabs: myTabs),

            //tab bar view
            Expanded(
              child: TabBarView(
                children: [
                  //page1
                  PageOne(),

                  //page2
                  PageTwo(),

                  //page3
                  PageThree(),

                  //page4
                  PageFour(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
