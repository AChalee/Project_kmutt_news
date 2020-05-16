
class CharacterData {
  final String name;
  final String image;
  final String description;
  // final CharacterStatus status;
  final List<String> gallery;

  CharacterData({
    this.name,
    this.image,
    this.description,
    // this.status,
    this.gallery,
  });

  // อ่านค่า json แล้วแปลงให้อยู่ในรูป ViewModel
  factory CharacterData.fromJson(Map<String, dynamic> json) {
    // CharacterStatus status = CharacterStatus.fromJson(json['status']);
    var gallery = json['gallery'];
    List<String> galleryList = new List<String>.from(gallery);

    return CharacterData(
      name: json['name'] as String,
      image: json['image'] as String,
      description: json['description'] as String,
      // status: status,
      gallery: galleryList,
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