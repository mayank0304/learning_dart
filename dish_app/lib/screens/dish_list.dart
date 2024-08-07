import 'package:dish_app/models/task.dart';
import 'package:dish_app/services/task_services.dart';
import 'package:dish_app/utils/util.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dish_app/models/dish.dart';

class DishList extends StatefulWidget {
  const DishList({super.key});

  @override
  _DishListState createState() => _DishListState();
}

class _DishListState extends State<DishList> {

  TaskService taskService = TaskService(userID: Util.UID);

  Tasks task = Tasks(
      title: "Learn Python",
      description: "Become good in Python",
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      isCompleted: false,
      createdOn: DateTime.now());
  addTask() {
    taskService.addTask(task);
  }
  List<Tasks> tasks = [];

  @override
  void initState() {
    super.initState();
    fetchTasks();
  }

  fetchTasks() async {
    List<Tasks> fetchedTasks = await taskService.getTasks();
    setState(() {
      tasks = fetchedTasks;
    });
    print(tasks);
  }

   Widget getTaskWidget(Tasks task) {
    return GestureDetector(
      onTap: () {
        // Handle task item tap if needed
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        color: Colors.amber[100], // You can customize the color as needed
        child: Row(
          children: [
            const Icon(Icons.task, size: 32), // You can replace this with a relevant icon
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(task.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text(task.description),
                Text('Start: ${task.startDate}'),
                Text('End: ${task.endDate}'),
              ],
            )
          ],
        ),
      ),
    );
  }

  List<Widget> getTasksWidgets() {
    return tasks.map((task) => getTaskWidget(task)).toList();
  }

  List<Dish> dishes = [
    Dish(
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/dish-7997d.appspot.com/o/noodles.jpg?alt=media&token=f90d3eea-9765-42c0-9c70-011a787ba01e",
        name: "Noodles",
        price: 100,
        rating: 4.0,
        color: Colors.amber[100]),
    Dish(
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/dish-7997d.appspot.com/o/Pizza.jpg?alt=media&token=187880b7-8cdc-4cfa-b5b6-6974c12a4e9b",
        name: "Pizza",
        price: 280,
        rating: 4.2,
        color: Colors.blue[200]),
    Dish(
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/dish-7997d.appspot.com/o/Pizza.jpg?alt=media&token=187880b7-8cdc-4cfa-b5b6-6974c12a4e9b",
        name: "Pasta",
        price: 100,
        rating: 3.7,
        color: Colors.red[200]),
    // Dish(
    //     imageUrl:
    //         "https://firebasestorage.googleapis.com/v0/b/mayank-dish-app.appspot.com/o/maggi.jpeg?alt=media&token=f2d5b37c-2d04-4efa-a0bb-204e7c91a11f",
    //     name: "Maggi",
    //     price: 20,
    //     rating: 4.5,
    //     color: Colors.green[200]),
    Dish(
        imageUrl:
            "https://firebasestorage.googleapis.com/v0/b/dish-7997d.appspot.com/o/vegroll.jpg?alt=media&token=a385e560-c089-4881-9075-fcdd8706fe4b",
        name: "Veg roll",
        price: 80,
        rating: 4.8,
        color: Colors.orange[200]),
  ];
  getDishes() {
    var dishList = dishes
        .map((e) => GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed("/dishdetail", arguments: e);
              },
              child: Container(
                  padding: const EdgeInsets.all(16),
                  color: e.color,
                  child: Row(
                    children: [
                      Image.network(
                        e.imageUrl,
                        width: 64,
                        height: 64,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(e.name),
                          Text(e.price.toString()),
                          Text(e.rating.toString()),
                        ],
                      )
                    ],
                  )),
            ))
        .toList();

    return dishList;
  }

  signout() async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacementNamed("/");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text(
              "Menu",
              style: TextStyle(color: Colors.white),
            )),
            backgroundColor: Colors.blueAccent,
            actions: [
              IconButton(
                  onPressed: signout, icon: const Icon(Icons.logout_rounded)),
            ]),
        body: ListView(
          children: 
            getTasksWidgets()
          
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchTasks,
          child: const Text("ADD"),
        ));
  }
}