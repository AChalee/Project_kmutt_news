class News {
  final String title;
  final String subtitle;
  final String content;
  final String time;
  final String author;
  final String seen;
  final String favorite;
  final String image;
  final String estimate;
  final String category;

  News(
      {this.title,
      this.subtitle,
      this.content,
      this.time,
      this.author,
      this.seen,
      this.favorite,
      this.estimate,
      this.image,
      this.category});
}

List<News> latestList = [
  News(
    author: "data",
    estimate: "3",
    category: "Tech",
    favorite: "21",
    seen: "40.2k",
    time: "8 Hour",
    title: "มาแล้วว #TCAS64 ",
    image:
        "https://www.facebook.com/KMUTT2ADMISSION/photos/a.752196398135926/3444673432221529/",
    subtitle:
        "กำหนดการรับสมัครนักศึกษาระดับปริญญาตรี ปีการศึกษา 2564 มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี",
    content:
        "กำหนดการรับสมัครนักศึกษาระดับปริญญาตรี ปีการศึกษา 2564 มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี",
  ),
];

List<News> trendingList = [
  News(
    author: "data",
    estimate: "3",
    category: "Tech",
    favorite: "21",
    seen: "40.2k",
    time: "8 Hour",
    title: "มาแล้วว #TCAS64 ",
    image:
        "https://www.facebook.com/KMUTT2ADMISSION/photos/a.752196398135926/3444673432221529/",
    subtitle:
        "กำหนดการรับสมัครนักศึกษาระดับปริญญาตรี ปีการศึกษา 2564 มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี",
    content:
        "กำหนดการรับสมัครนักศึกษาระดับปริญญาตรี ปีการศึกษา 2564 มหาวิทยาลัยเทคโนโลยีพระจอมเกล้าธนบุรี",
  ),
];
