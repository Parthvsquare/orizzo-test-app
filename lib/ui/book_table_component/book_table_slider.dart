import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:orizzo/resources/const.dart';

class BookTableImages extends StatefulWidget {
  const BookTableImages({Key? key}) : super(key: key);

  @override
  _BookTableImagesState createState() => _BookTableImagesState();
}

class _BookTableImagesState extends State<BookTableImages> {
  int _currentIndex = 0;

  List cardList = [ItemsImage(), ItemsImage(), ItemsImage(), ItemsImage()];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          CarouselSlider(
            options: CarouselOptions(
              height: 150.0,
              // enlargeCenterPage: true,
              // autoPlay: true,
              // autoPlayInterval: Duration(seconds: 3),
              // autoPlayAnimationDuration: Duration(milliseconds: 800),
              // autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: true,
              viewportFraction: 1,
              aspectRatio: 16 / 9,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: cardList.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height * 0.60,
                  width: MediaQuery.of(context).size.width,
                  child: card,
                );
              });
            }).toList(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: map<Widget>(cardList, (index, url) {
              return Container(
                width: _currentIndex == index ? 20.0 : 10.0,
                height: 2.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color:
                      _currentIndex == index ? Color(0xFF59966B) : PrimaryColor,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class ItemsImage extends StatelessWidget {
  const ItemsImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        image: DecorationImage(
          image: AssetImage("assets/placeholder-01.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}



// class _BookTableImagesState extends State<BookTableImages> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       child: ListView(
//         children: <Widget>[
//           CarouselSlider(
//               items: [
//                 Container(
//                   margin: EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     image: DecorationImage(
//                       image: AssetImage("assets/placeholder-01.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     image: DecorationImage(
//                       image: AssetImage("assets/placeholder-01.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   margin: EdgeInsets.all(6.0),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(8.0),
//                     image: DecorationImage(
//                       image: AssetImage("assets/placeholder-01.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ],
//               options: CarouselOptions(
//                 height: 150,
//                 enlargeCenterPage: true,
//                 // autoPlay: true,
//                 aspectRatio: 16 / 9,
//                 // autoPlayCurve: Curves.fastOutSlowIn,
//                 enableInfiniteScroll: true,
//                 // autoPlayAnimationDuration: Duration(milliseconds: 800),
//                 viewportFraction: 0.8,
//               )),
//         ],
//       ),
//     );
//   }
// }