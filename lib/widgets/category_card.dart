import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kmutt_news/constants.dart';

class CategoryCard extends StatelessWidget {
  final String imageSrc;
  final String title;
  final Function press;

  const CategoryCard({
    Key key,
    this.imageSrc,
    this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(color: Colors.grey[300], width: 1.0),
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 17,
                spreadRadius: -23,
                color: kGrey1)
          ],
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    imageSrc,
                    height: 40,
                    alignment: Alignment.center,
                  ),
                  // Spacer(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(color: kGrey2, fontSize: 16.0),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
