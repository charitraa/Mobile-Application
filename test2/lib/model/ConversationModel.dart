class ChatModel {
  String? userId1;
  String? userId2;
  String? username1;
  String? username2;
  String? address;
  String? text;
  String? type;
  String? createdAt;

  ChatModel({this.userId1,this.userId2,this.username1,this.username2,this.address,this.text,this.type,this.createdAt});

  ChatModel.fromJson(Map<String, dynamic> json) {
    userId1 = json['userId1'];
    userId2 = json['userId2'];
    username1 = json['username1'];
    username2 = json['username2'];
    address = json['address'];
    text = json['text'];
    type = json['type'];
    createdAt = json['createdAt'];

  }


}