import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kmutt_news/models/news.dart';
import 'package:kmutt_news/views/read_news_view.dart';
import 'package:kmutt_news/widgets/primary_card_news.dart';

class TrendingTabView extends StatefulWidget {
  @override
  _TrendingTabViewState createState() => _TrendingTabViewState();
}

class _TrendingTabViewState extends State<TrendingTabView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: trendingList.length,
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var trending = trendingList[index];

        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReadNewsView(
                  news: trending,
                ),
              ),
            );
          },
          child: Container(
            width: double.infinity,
            height: 300.0,
            margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 12),
            child: PrimaryCard(
              news: trending,
            ),
          ),
        );
      },
    );
  }
}
