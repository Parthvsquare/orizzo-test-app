import 'package:flutter/material.dart';
import '../info_component/left_bar.dart';
import '../info_component/right_info.dart';
import '../const.dart';

class InfoPart1 extends StatefulWidget {
  // const InfoPart1({Key? key}) : super(key: key);

  @override
  _InfoPart1State createState() => _InfoPart1State();
}

class _InfoPart1State extends State<InfoPart1> {
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
                        child: LeftBar(
                            'explore grocery, pharmacy, \n\nrestaurants, lifestyle, meat & more....'),
                      ),
                    )),
              ],
            ),
          ),
          // Color(PrimaryColor),
          Expanded(
            flex: 7,
            child: RightInfo(
                'Planning \n\nanything special? \n\nNo way to get out!',
                'assets/onboar-2-01.png',
                1),
          )
        ],
      ),
    );
  }
}
