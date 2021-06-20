import 'package:flutter/material.dart';
import '../info_component/left_bar.dart';
import '../info_component/right_info.dart';
import '../const.dart';

class infoPart1 extends StatelessWidget {
  const infoPart1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: LeftBar('explore groceries, pharmecy'),
        ),
        Container(
          child: RightInfo('Planning anything special? No way to get out!',
              'assets/onboar-2-01.png'),
        )
      ],
    );
  }
}
