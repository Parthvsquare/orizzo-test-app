import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';

class ProductGallery extends StatelessWidget {
  var inputImage;
  var imageTitle;
  ProductGallery(this.inputImage, this.imageTitle);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 150,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: NetworkImage(inputImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  imageTitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: PrimaryColor,
                    fontFamily: 'Cera',
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none,
                    height: 0.7,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: 150,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  image: DecorationImage(
                    image: NetworkImage(inputImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                child: Text(
                  imageTitle,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 14,
                    color: PrimaryColor,
                    fontFamily: 'Cera',
                    fontWeight: FontWeight.w300,
                    decoration: TextDecoration.none,
                    // height: 0.7,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
