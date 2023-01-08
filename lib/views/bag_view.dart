import 'package:flutter/material.dart';

class BagView extends StatelessWidget {
  List<Map> bag =[];

  BagView({super.key, required this.bag});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,title: Text("Your Cart Items"),),
      body: ListView.builder(
          itemCount: bag.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(bag[index]["name"]),
              subtitle: Text(bag[index]["price"].toString()),
            );
          }),
    );
  }
}
