import 'package:flutter/material.dart';

class FavouriteView extends StatelessWidget {
  List<Map> fav= [];

  FavouriteView({super.key, required this.fav});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.teal,title: Text("Favourite Items"),),
      body: ListView.builder(
          itemCount: fav.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(fav[index]["name"]),
            );
          }),
    );
  }
}
