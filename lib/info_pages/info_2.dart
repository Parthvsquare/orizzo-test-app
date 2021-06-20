import 'package:flutter/material.dart';
import '../const.dart';
import '../info_component/left_bar.dart';
import '../info_component/right_info.dart';

class infoPart2 extends StatelessWidget {
  const infoPart2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: LeftBar('explore groceries, pharmecy'),
        ),
        Container(
          child: RightInfo('No ideas, Pandemic? Start your search.',
              'assets/onboar-1-01.png'),
        )
      ],
    );
  }
}
