import 'package:flutter/material.dart';
import 'package:shopingapp/views/bag_view.dart';
import 'package:shopingapp/views/favourite_view.dart';
class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // bool isFavourite = false;
  List<Map> products = [
    {"name":"Cheese Burger",
    "price": 100,
      "isInCArt": false,
      "isFavourite": false
    },
    {"name":"Zinger Burger",
      "price": 150,
      "isInCArt": false,
      "isFavourite": false},
    {"name":"Pizza",
      "price": 500,
      "isInCArt": false,
      "isFavourite": false,},
    {"name":"Andy Wala  Burger",
      "price": 60,
      "isInCArt": false,
      "isFavourite": false,
    },
    {"name":"Cold Drink",
      "price": 60,
      "isInCArt": false,
      "isFavourite": false,
      },

  ];
  // bool isfavourite = false;
  bool isInCArt = false;
  List<Map> favouriteProducts = [


  ];
  List<Map> cartProducts = [


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("420 Hotel"),
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(products[index]["name"]),
              subtitle: Text(products[index]["price"].toString()),
              trailing: Wrap(
                children: [
                  IconButton(onPressed: (){
                    if( !products[index]["isInCArt"]){
                      cartProducts.add(products[index]);
                      setState(() {
                        products[index]["isInCArt"] = true;
                      });
                    }else{
                      cartProducts.remove(products[index]);
                      setState(() {
                        products[index]["isInCArt"] = false;
                      });
                    };


                    setState(() {

                    });
                    print(cartProducts);
                  }, icon:products[index]["isInCart"]==true?Icon(Icons.add_shopping_cart):Icon(Icons.check,color: Colors.green,)
                  ),

                  IconButton(onPressed: (){
                    if( !products[index]["isFavourite"]){
                     favouriteProducts.add(products[index]);
                      setState(() {
                      products[index]["isFavourite"] = true;
                      });
                    }else{
                      favouriteProducts.remove(products[index]);
                      setState(() {
                        products[index]["isFavourite"] = false;
                      });
                    };


                    setState(() {

                    });
                    print(favouriteProducts);
                  },
                      icon:products[index]["isFavourite"]==false? Icon(Icons.favorite_outline):Icon(Icons.favorite,color: Colors.red,)),

                ],
              ),
            );
          }),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>FavouriteView(fav: favouriteProducts)));
            }, child:Text("Add to favourite")),
          ),
          ElevatedButton(onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context)=>BagView(bag: cartProducts)));}, child:Text("Add to Cart"))
        ],
      ),
    );
  }
}
