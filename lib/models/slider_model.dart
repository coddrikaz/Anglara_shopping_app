class UserModel {
  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  UserModel({this.id, this.email, this.firstName, this.lastName, this.avatar});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    avatar = json['avatar'];
  }
}
// class UserModel {
//   int? id;
//   String? author;
//   String? width;
//   String? height;
//   String? url;
//   String? download_url;
//
//   UserModel({this.id, this.author, this.width, this.height, this.url, this.download_url});
//
//   UserModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     author = json['author'];
//     width = json['width'];
//     height = json['height'];
//     url = json['url'];
//     download_url = json['download_url'];
//   }
// }