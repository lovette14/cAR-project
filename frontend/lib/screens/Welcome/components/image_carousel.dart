import 'package:flutter/material.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
            margin: EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  height: (MediaQuery.of(context).size.height) / 2,
                  width: MediaQuery.of(context).size.width,
                  child:  Image.asset("asset/welcomeCards/card1.png")
                  ),
                Container(
                    height: (MediaQuery.of(context).size.height) / 2,
                    width: MediaQuery.of(context).size.width,
                    child:  Image.asset("asset/welcomeCards/card2.png")
                ),
                Container(
                    height: (MediaQuery.of(context).size.height) / 2,
                    width: MediaQuery.of(context).size.width,
                    child:  Image.asset("asset/welcomeCards/card3.png")
                )
              ],

      ),);
    }
  }
