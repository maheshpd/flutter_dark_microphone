import 'package:flutter/material.dart';
import 'package:flutter_dark_microphone/theme/constant.dart';

class MicroCard extends StatelessWidget {
  const MicroCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30),
      child: Container(
        width: MediaQuery.of(context).size.width - 60,
        height: 420,
        child: Stack(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 50),
              height: 350,
              decoration: BoxDecoration(
                  color: cardBackground,
                  borderRadius: BorderRadius.circular(20)),
            ),
            Positioned(
                top: 0,
                left: 80,
                child: Image.asset("assets/images/microphone.png")),
            Positioned(
                top: 290,
                left: 80,
                child: Column(
                  children: <Widget>[
                    const Text(
                      "Neumann TLM 103 \n Studio Bundle",
                      style: TextStyle(
                          fontSize: 20,
                          color: textWhite,
                          height: 1.6,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                        children: List.generate(5, (index) {
                          return const Padding(
                            padding:  EdgeInsets.only(left: 5, right: 5),
                            child:  Icon(
                              Icons.star,
                              color: primary,
                              size: 17,
                            ),
                          );
                        })
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}