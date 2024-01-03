import 'package:dummy/pages/home_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PersonTab extends StatefulWidget {
  PersonTab({super.key});

  @override
  State<PersonTab> createState() => _PersonTabState();
}

class _PersonTabState extends State<PersonTab> {
  final ImagePerson = Image.asset('lib/images/MAN.jpg');

  void BackTap(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PageHome()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: IconButton(
                  icon: Padding(
                    padding: const EdgeInsets.only(
                      top: 10.0,
                    ),
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.grey[800],
                      size: 36,
                    ),
                  ),
                  onPressed: () {
                    BackTap(context);
                    //account button tapped
                  },
                ),
              ),
              Container(
                  width: 200,
                  child: ImagePerson,
                  margin: EdgeInsets.only(top: 70.0)),
              SizedBox(height: 50),
              Text(
                'Muspik',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 35,
                ),
              ),
              SizedBox(height: 5),
              Text(
                '19215179',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
