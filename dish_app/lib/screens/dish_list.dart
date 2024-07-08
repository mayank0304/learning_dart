import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:dish_app/models/dish.dart';

class DishList extends StatefulWidget {
  const DishList({super.key});

  @override
  _DishListState createState() => _DishListState();
}

class _DishListState extends State<DishList> {
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

  signout () async {
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
        actions:[ IconButton(
            onPressed: signout, icon: const Icon(Icons.logout_rounded)),]
        
      ),
      body: ListView(
        children: getDishes(),
      ),
      floatingActionButton: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 80),
            child: SizedBox(
              width: 120,
              child: FloatingActionButton(
                // onPressed: sortdishes,
                onPressed: () {},
                backgroundColor: const Color(0xFF729762),
                child: const Text("Low - High",
                    style: TextStyle(color: Color(0xFFE7F0DC), fontSize: 15)),
              ),
            ),
          ),
          SizedBox(
            width: 120,
            child: FloatingActionButton(
              // onPressed: revSortQuotes,
              onPressed: () {},
              backgroundColor: const Color(0xFF729762),
              child: const Text("High - Low",
                  style: TextStyle(color: Color(0xFFE7F0DC), fontSize: 15)),
            ),
          ),
        ],
      ),
    );
  }
}
