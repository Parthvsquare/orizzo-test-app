import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HeaderNavigation extends StatelessWidget {
  const HeaderNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  // height: 108,
                  margin: EdgeInsets.only(
                    top: 50,
                    bottom: 20,
                    left: 20,
                  ),
                  child: Icon(
                    Icons.arrow_back_ios,
                    // color: Colors.pink,
                    size: 30.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ),
                Container(
                  // height: 108,
                  width: 120,
                  margin: EdgeInsets.only(
                    top: 50,
                    bottom: 20,
                    left: 10,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/logo-landscape.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  // height: 100,
                  width: 30,
                  // padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(
                    top: 65,
                    bottom: 35,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/addtocart-01.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Container(
                  // height: 108,
                  width: 30,
                  margin: EdgeInsets.only(
                    top: 65,
                    bottom: 35,
                    right: 15,
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/menu-01.png'),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
