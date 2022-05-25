import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dark_microphone/theme/constant.dart';

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  List items = [1, 2, 3, 4, 5, 6, 7];
  late int selectedIn;

  @override
  void initState() {
    super.initState();
    selectedIn = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        CarouselSlider(
          items: items.map((item) {
            return Builder(builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Image.asset(
                    "assets/images/microphone.png",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              );
            });
          }).toList(),
          options: CarouselOptions(
              height: 400,
              autoPlayCurve: Curves.bounceIn,
              aspectRatio: 16 / 7,
              autoPlay: true,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                setState(() {
                  selectedIn = index;
                });
              }),
        ),
        Positioned(
            left: 0,
            right: 0,
            bottom: 15,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(items.length, (index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: index == selectedIn ? 13 : 10,
                    height: index == selectedIn ? 13 : 10,
                    decoration: BoxDecoration(
                        color: index == selectedIn ? primary : homeBackground,
                        shape: BoxShape.circle),
                  ),
                );
              }),
            ))
      ],
    );
  }
}