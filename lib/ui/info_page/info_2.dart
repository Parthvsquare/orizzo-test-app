import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';
import '../info_component/left_bar.dart';
import '../info_component/right_info.dart';

class InfoPart2 extends StatefulWidget {
  // const InfoPart2({Key? key}) : super(key: key);

  @override
  _InfoPart2State createState() => _InfoPart2State();
}

class _InfoPart2State extends State<InfoPart2> {
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 1,
                  child: ColoredBox(color: Colors.white),
                ),
                Expanded(
                    flex: 9,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: const Radius.circular(30.0)),
                      child: ColoredBox(
                        color: PrimaryColor,
                        child:
                            LeftBar('explore hotels, \n\ncoffee shops & more.'),
                      ),
                    )),
              ],
            ),
          ),
          // Color(PrimaryColor),
          Expanded(
            flex: 7,
            child: RightInfo('No ideas \n\nPandemic? \n\nStart your search',
                'assets/onboar-1-01.png', 2),
          )
        ],
      ),
    );
  }
}
