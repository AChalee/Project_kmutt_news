import 'package:flutter/material.dart';
import 'package:kmutt_news/constants.dart';
import 'package:kmutt_news/models/news.dart';
import 'package:kmutt_news/views/read_news_view.dart';
import 'package:kmutt_news/widgets/primary_card.dart';
import 'package:kmutt_news/widgets/secondary_card.dart';

class LatestNewsTabView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 300.0,
            padding: EdgeInsets.only(left: 18.0, top: 20),
            child: ListView.builder(
                itemCount: latestList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var news = latestList[index];

                  return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ReadNewsView(
                            news: news,
                          ),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 12.0),
                      child: PrimaryCard(news: news),
                    ),
                  );
                }),
          ),
          SizedBox(
            height: 25.0,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: Text(
                "Base On Your Reading History",
                style: kNonActiveTabStyle,
              ),
            ),
          ),
          // --------------------------------- card ส่วนล่างแนวตั้ง----------------------------------------------
          ListView.builder(
            itemCount: recentList.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              var recent = recentList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReadNewsView(
                        news: recent,
                      ),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 135.0,
                  margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: SecondaryCard(
                    news: recent,
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
