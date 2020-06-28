import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffB2BCBC),
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(12),
            child: Container(
              width: MediaQuery.of(context).size.width / 3 - 43,
              height: MediaQuery.of(context).size.height,
              child: DottedBorder(
                dashPattern: [2, 4],
                borderType: BorderType.RRect,
                padding: EdgeInsets.all(0),
                radius: Radius.circular(20),
                color: Colors.white,
                strokeWidth: 4,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Color(0xff98C3C9),
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Image.network(
                        'https://scontent-hel2-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/p640x640/101398830_352564515714457_2500348746382149423_n.jpg?_nc_ht=scontent-hel2-1.cdninstagram.com&_nc_cat=101&_nc_ohc=0PvitDN0SxYAX8wtbEy&oh=9da48e1f435c71248ad22ad8be3ca5d3&oe=5F23F3F6',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          _buildContent(),
        ],
      ),
    );
  }

  Widget _buildContent() {
    return Column(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(8),
            child: DottedBorder(
              dashPattern: [2, 4],
              borderType: BorderType.RRect,
              padding: EdgeInsets.all(0),
              radius: Radius.circular(20),
              color: Colors.white,
              strokeWidth: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Color(0xff98C3C9),
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Row(
                      children: [
                        buildCheckSystemButton(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Container(
                height: MediaQuery.of(context).size.width / 3 - 43,
                width: MediaQuery.of(context).size.width / 3 - 6,
                child: DottedBorder(
                  dashPattern: [2, 4],
                  borderType: BorderType.RRect,
                  padding: EdgeInsets.all(0),
                  radius: Radius.circular(20),
                  color: Colors.white,
                  strokeWidth: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Color(0xff98C3C9),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Image.network(
                          'https://scontent-hel2-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/p640x640/101398830_352564515714457_2500348746382149423_n.jpg?_nc_ht=scontent-hel2-1.cdninstagram.com&_nc_cat=101&_nc_ohc=0PvitDN0SxYAX8wtbEy&oh=9da48e1f435c71248ad22ad8be3ca5d3&oe=5F23F3F6',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 12),
              Container(
                height: MediaQuery.of(context).size.width / 3 - 43,
                width: MediaQuery.of(context).size.width / 3 - 6,
                child: DottedBorder(
                  dashPattern: [2, 4],
                  borderType: BorderType.RRect,
                  padding: EdgeInsets.all(0),
                  radius: Radius.circular(20),
                  color: Colors.white,
                  strokeWidth: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Color(0xff98C3C9),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Image.network(
                          'https://scontent-hel2-1.cdninstagram.com/v/t51.2885-15/sh0.08/e35/p640x640/101398830_352564515714457_2500348746382149423_n.jpg?_nc_ht=scontent-hel2-1.cdninstagram.com&_nc_cat=101&_nc_ohc=0PvitDN0SxYAX8wtbEy&oh=9da48e1f435c71248ad22ad8be3ca5d3&oe=5F23F3F6',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildCheckSystemButton() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      height: 35,
      width: 70,
      child: Stack(
        children: [
          Positioned(
            left: 8,
            bottom: 4,
            top: 0,
            child: Container(
              color: Color.fromARGB(153, 255, 235, 57),
              child: SizedBox(width: 100, height: 100),
            ),
          ),
          Positioned(
            top: 4,
            right: 8,
            bottom: 0,
            child: Container(
              color: Color.fromARGB(153, 255, 174, 232),
              child: SizedBox(width: 100, height: 100),
            ),
          ),
          Positioned.fill(
            child: Text(
              'CHECK ALL SYSTEMS',
              style: TextStyle(
                color: Color(0xFFFFEE51),
                shadows: <Shadow>[
                  Shadow(offset: Offset(7, 5), blurRadius: 4, color: Color.fromRGBO(0, 73, 56, 0.74)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
