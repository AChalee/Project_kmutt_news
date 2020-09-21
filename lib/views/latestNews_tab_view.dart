import 'package:flutter/material.dart';
import 'package:kmutt_news/models/news.dart';
import 'package:kmutt_news/widgets/primary_card.dart';

class LatestNewsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300.0,
            padding: EdgeInsets.only(left: 18.0),
            child: ListView.builder(
                itemCount: latestList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var news = latestList[index];
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      margin: EdgeInsets.only(right: 12.0),
                      child: PrimaryCard(news: news),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
