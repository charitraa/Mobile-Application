class ConversationModel{
  final String id;
  final String name;
  final String name2;
  final String userId1;
  final String userId2;
  final String datetime;

  ConversationModel({
    required this.id,
    required this.name,
    required this.name2,
    required this.userId1,
    required this.userId2,
    required this.datetime,
});

  factory ConversationModel.fromFirestore(Map<String, dynamic> data){
    return ConversationModel(id: data['id']?? '', name: data['name']?? '', name2: data['name2'] ?? '', userId1: data['userId2'] ?? '',userId2: data['userId2'] ?? '', datetime: data['datetime']);
  }
}

