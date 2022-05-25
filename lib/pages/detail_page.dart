import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dark_microphone/theme/constant.dart';
import 'package:flutter_dark_microphone/widgets/slider.dart';
import 'package:flutter_svg/svg.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: detailBackground,
      appBar: AppBar(
        backgroundColor: detailBackground,
        elevation: 0,
        leading: FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: SvgPicture.asset(
            "assets/images/back_icon.svg",
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    List startItems = [
      {"active": true},
      {"active": true},
      {"active": true},
      {"active": false},
      {"active": false},
    ];
    return ListView(
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.all(30),
          child: SliderWidget(),
        ),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Container(
            decoration: const BoxDecoration(
                color: homeBackground,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 45, top: 50, right: 45, bottom: 45),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "DPA 4018V-B-B01",
                    style: TextStyle(
                        fontSize: 30,
                        color: textWhite,
                        fontWeight: FontWeight.bold,
                        height: 1.5),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Vocal Mircophones",
                    style: TextStyle(
                        color: textWhite.withOpacity(0.8),
                        fontSize: 20,
                        letterSpacing: 1),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Row(
                        children: List.generate(startItems.length, (index) {
                          return Opacity(
                            opacity:
                                startItems[index]['active'] == true ? 1 : 0.2,
                            child: const Padding(
                              padding: EdgeInsets.only(left: 5, right: 5),
                              child: Icon(
                                Icons.star,
                                color: primary,
                                size: 18,
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      const Text(
                        "27 ratings",
                        style: TextStyle(color: textWhite, fontSize: 17),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                  const Text(
                    "Natural sound, High level stability Adaptable capsule to use with wireless, optional suitable thred adapter for Sennheiser.",
                    style:
                        TextStyle(color: textWhite, fontSize: 18, height: 1.6),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
