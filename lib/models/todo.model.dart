class TodoModel {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  TodoModel({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  TodoModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
    completed = json['completed'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }
}
