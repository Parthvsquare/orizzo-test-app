import 'package:flutter/material.dart';
import '../other_components/next_button.dart';
import '../info_pages/info_2.dart';
import '../on_boarding/about.dart';
import '../const.dart';

class RightInfo extends StatelessWidget {
  var bottomText;
  var theImage;
  var theNextScreen;
  RightInfo(this.bottomText, this.theImage, this.theNextScreen);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Container(
            margin: EdgeInsets.only(left: 20, top: 140, right: 20, bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(theImage),
                // fit: BoxFit.fill,
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            // width: 140
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.only(
              left: 10,
              right: 20,
            ),
            margin: EdgeInsets.only(top: 180),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => theNewPage()),
                );
              },
              child: NextButton(
                'next',
              ),
            ),
          ),
        ),
        Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.only(left: 20, bottom: 35),
              child: Text(
                bottomText,
                style: TextStyle(
                  height: 0.7,
                  fontSize: 16,
                  color: PrimaryColor,
                  fontWeight: FontWeight.w300,
                  decoration: TextDecoration.none,
                  fontFamily: 'Cera',
                ),
              ),
            ))
      ],
    );
  }

  theNewPage() {
    if (theNextScreen == 1) {
      return InfoPart2();
    }
    if (theNextScreen == 2) {
      return AboutPage();
    } else {
      return InfoPart2();
    }
  }
}
