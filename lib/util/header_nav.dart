import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:orizzo/resources/const.dart';
import 'package:orizzo/ui/hamburger_menu_page/hamburger_menu.dart';

class HeaderNavigation extends StatelessWidget {
  const HeaderNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: Icon(
              Icons.arrow_back_ios,
              size: 30.0,
              semanticLabel: 'to go back',
              color: Colors.black,
            ),
          ),
          Container(
            width: 120,
            child: Image.asset(
              'assets/logo-landscape.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}

class HeaderActionNav extends StatefulWidget {
  const HeaderActionNav({Key? key}) : super(key: key);

  @override
  _HeaderActionNavState createState() => _HeaderActionNavState();
}

class _HeaderActionNavState extends State<HeaderActionNav> {
  late var whichImage = "assets/menu-01.png";
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: Image.asset(
              'assets/addtocart-01.png',
              fit: BoxFit.fitWidth,
            ),
          ),
          GestureDetector(
            onTap: () {
              // setState(() {
              //   whichImage = "assets/addtocart-01.png";
              // });
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => HamburgerMenu()),
              // );
              profileMenu(context);
            },
            child: Container(
              margin: EdgeInsets.all(15),
              child: Image.asset(
                whichImage,
                fit: BoxFit.fitWidth,
              ),
            ),
          )
        ],
      ),
    );
  }

  void profileMenu(context) {
    showModalBottomSheet(
        // shape: Border(left: ),
        backgroundColor: Colors.transparent,
        context: context,
        // isScrollControlled: true,
        builder: (BuildContext bc) {
          return Container(
            // height: MediaQuery.of(context).size.height * .1000,
            decoration: BoxDecoration(
              color: Color.fromRGBO(247, 247, 247, 10),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
            ),
            child: HamburgerMenu(),
          );
        });
    // builder: (BuildContext bc) {
    //   return
    // });
  }
}
