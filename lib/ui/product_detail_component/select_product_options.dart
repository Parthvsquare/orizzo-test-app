import 'package:flutter/material.dart';
import 'package:orizzo/resources/const.dart';

class ProductSize extends StatefulWidget {
  // const ProductSize({Key? key}) : super(key: key);
  final String categoryName;
  ProductSize(this.categoryName);

  @override
  _ProductSizeState createState() => _ProductSizeState();
}

class _ProductSizeState extends State<ProductSize> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Text(
              widget.categoryName,
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  child: ProductCategory("Regular"),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: ProductCategory("Family"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductCategory extends StatefulWidget {
  // const ProductCategory({Key? key}) : super(key: key);
  final String type;
  ProductCategory(this.type);
  @override
  _ProductCategoryState createState() => _ProductCategoryState();
}

class _ProductCategoryState extends State<ProductCategory> {
  var thetextcolor = Colors.black;

  var thebgcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
            thetextcolor = Colors.white;
            thebgcolor = PrimaryAssentColor;
          });
        },
        child: Container(
            height: 35,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: thebgcolor,
                border: Border.all(
                  color: PrimaryAssentColor,
                  width: 1,
                )),
            padding: EdgeInsets.all(5),
            child: Center(
              child: Text(
                widget.type.toUpperCase(),
                style: TextStyle(
                  color: thetextcolor,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            )),
      ),
    );
  }
}
