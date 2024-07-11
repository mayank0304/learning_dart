// Tasks: title, description, startDate, endDate, createdOn, isCompleted

import 'package:cloud_firestore/cloud_firestore.dart';

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
      "startDate": startDate,
      "endDate": endDate,
      "isCompleted": isCompleted,
      "createdOn": createdOn,
    };
  }

  // Deserealization
  static Tasks fromMap(Map<String, dynamic> map) {
     DateTime convertToDateTime(dynamic value) {
      if (value is Timestamp) {
        return value.toDate();
      } else if (value is String) {
        return DateTime.parse(value);
      } else {
        throw Exception("Invalid date format");
      }
    }

    return Tasks(
      title: map['title'] as String,
      description: map['description'] as String,
      startDate: convertToDateTime(map['startDate']),
      endDate: convertToDateTime(map['endDate']),
      isCompleted: map['isCompleted'] as bool,
      createdOn: convertToDateTime(map['createdOn']),
    );
}
}