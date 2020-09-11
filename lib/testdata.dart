import 'package:http/http.dart'as Http;

class DogService{
  static randomDog(){
    var url ="https://dog.ceo/api/breeds/image/random";
    Http.get(url).then((response){
      print("Response status: ${response.body}");
    });
  }
}