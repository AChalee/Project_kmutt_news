
class ViewData {
  final String id;
  final String title;
  final String detail;
  // final CharacterStatus status;
  final List<String> picCoverUrl;

  ViewData({
    this.id,
    this.title,
    this.detail,
    // this.status,
    this.picCoverUrl,
  });

  // อ่านค่า json แล้วแปลงให้อยู่ในรูป ViewModel
  factory ViewData.fromJson(Map<String, dynamic> json) {
    // CharacterStatus status = CharacterStatus.fromJson(json['status']);
    var picCoverUrl = json['picCoverUrl'];
    List<String> picCoverUrlList = new List<String>.from(picCoverUrl);

    return ViewData(
     id: json['id'] as String,
      title: json['title'] as String,
      detail: json['detail'] as String,
      // status: status,
      picCoverUrl: picCoverUrlList,
    );
  }
}




// class CharacterStatus {
//   final int health;
//   final int hunger;
//   final int sanity;

//   CharacterStatus({this.health, this.hunger, this.sanity});

//   factory CharacterStatus.fromJson(Map<String, dynamic> json) {
//     return CharacterStatus(
//       health: json['health'] as int,
//       hunger: json['hunger'] as int,
//       sanity: json['sanity'] as int,
//     );
//   }
// }