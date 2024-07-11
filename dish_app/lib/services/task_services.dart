// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dish_app/models/task.dart';

class TaskService {

  String userID;
  CollectionReference? taskCollection;

  TaskService({
    required this.userID
  }) {
      taskCollection =
      FirebaseFirestore.instance.collection("users").doc(userID).collection("tasks");
  }


  addTask(Tasks task) {
    taskCollection!.add(task.toMap());
  }

  updateTask(Tasks task, String docID) {
    taskCollection!.doc(docID).update(task.toMap());
  }

  deleteTask(String docID) {
    taskCollection!.doc(docID).delete();
  }

  getTasks() async {
    QuerySnapshot querySnapshot = await taskCollection!.get();
    return querySnapshot.docs.map((doc) => Tasks.fromMap(doc.data() as Map<String, dynamic>)).toList();
    // taskCollection.snapshots().map((QuerySnapshot querySnapshot) => ),
  }
}
