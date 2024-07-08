// Tasks: title, description, startDate, endDate, createdOn, isCompleted

class Tasks {
  String title;
  String description;
  DateTime startDate;
  DateTime endDate;
  bool isCompleted;
  DateTime createdOn;

  Tasks({
    required this.title,
    required this.description,
    required this.startDate,
    required this.endDate,
    required this.isCompleted,
    required this.createdOn,
  });

  // toMap i.e. Map representation of object
  // Serialization
  Map<String, dynamic> toMap() {
    return {
      "title": title,
      "description": description,
      "startDate": startDate.toIso8601String(),
      "endDate": endDate.toIso8601String(),
      "isCompleted": isCompleted,
      "createdOn": createdOn.toIso8601String(),
    };
  }

  // Deserealization
  static Tasks fromMap(Map<String, dynamic> map) {
    return Tasks(
        title: map["title"],
        description: map["description"],
        startDate: map["startDate"],
        endDate: map["endDate"],
        isCompleted: map["isCompleted"],
        createdOn: map["createdOn"]);
  }
}
