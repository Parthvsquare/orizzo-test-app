import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';

class HamburgerMenu extends StatefulWidget {
  const HamburgerMenu({Key? key}) : super(key: key);

  @override
  _HamburgerMenuState createState() => _HamburgerMenuState();
}

class _HamburgerMenuState extends State<HamburgerMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(left: 25),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    'My menu'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Cera",
                      color: PrimaryAssentColor,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25),
                  child: Divider(
                    color: PrimaryColor,
                    height: 50,
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: RowCreater(Icons.person_add, "My Wishlist"),
                        ),
                        Container(
                          child: RowCreater(Icons.person_add, "My Address"),
                        ),
                        Container(
                            child: RowCreater(
                                Icons.person_add, "Reference Points")),
                        Container(
                          child: RowCreater(Icons.person_add, "Offers"),
                        ),
                        Container(
                            child:
                                RowCreater(Icons.person_add, "Account Detail")),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'login'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: "Cera",
                      color: PrimaryAssentColor,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            child:
                                RowCreater(Icons.person_add, "About Orizzo")),
                        Container(
                            child:
                                RowCreater(Icons.person_add, "Terms of use")),
                        Container(
                            child: RowCreater(
                                Icons.privacy_tip_outlined, "Privacy Policy")),
                        Container(
                            child: RowCreater(
                                Icons.ac_unit_rounded, "Delivery Policy")),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'List with orizzo'.toUpperCase(),
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Cera',
                      color: PrimaryAssentColor,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Center(
                    child: Text(
                      'Orizzo. All Rights Reserved',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Cera',
                        color: PrimaryColor,
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

// ignore: must_be_immutable
class RowCreater extends StatelessWidget {
  // const RowCreater({Key? key}) : super(key: key);
  var addicon;
  var thetextfield;
  RowCreater(
    this.addicon,
    this.thetextfield,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(right: 10, bottom: 15),
          child: Icon(
            addicon,
            size: 15,
            color: PrimaryColor,
          ),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Text(
            thetextfield,
            style: TextStyle(
              fontSize: 14,
              color: PrimaryColor,
              fontFamily: 'Cera',
              fontWeight: FontWeight.w200,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}
