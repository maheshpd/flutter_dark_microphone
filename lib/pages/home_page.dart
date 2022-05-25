import 'package:flutter/material.dart';
import 'package:flutter_dark_microphone/pages/detail_page.dart';
import 'package:flutter_dark_microphone/theme/constant.dart';
import 'package:flutter_dark_microphone/widgets/micro_card.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: homeBackground,
      appBar: AppBar(
        backgroundColor: homeBackground,
        elevation: 0,
        title: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                "Microphones",
                style: appSubTitle,
              ),
            )),
        actions: <Widget>[
          FlatButton(
              onPressed: () {},
              child: SvgPicture.asset("assets/images/burger_icon.svg"))
        ],
      ),
      body: getBody(context),
    );
  }

  Widget getBody(BuildContext context) {
    var size = MediaQuery
        .of(context)
        .size;
    return ListView(
      padding: const EdgeInsets.all(30),
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 40,
            ),
            Text(
              "Largo Diapghragm Microphones".toUpperCase(),
              style: TextStyle(
                  color: textWhite.withOpacity(0.8),
                  fontSize: 17,
                  letterSpacing: 1),
            ),
            const SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(2, (index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => const DetailPage()));
                      },
                      child: const MicroCard());
                }),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              "Vocal Microphones".toUpperCase(),
              style: TextStyle(
                  color: textWhite.withOpacity(0.8),
                  fontSize: 17,
                  letterSpacing: 1),
            ),
            const SizedBox(
              height: 40,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(2, (index) {
                  return const MicroCard();
                }),
              ),
            )
          ],
        )
      ],
    );
  }
}


