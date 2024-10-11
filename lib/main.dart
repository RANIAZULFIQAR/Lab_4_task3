import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: FoodListView(),
));
class FoodListView extends StatelessWidget {
  // A list of food names to display in the ListView
  final List<String> foodItems = [
    'Pizza',
    'Burger',
    'Sushi',
    'Pasta',
    'Salad',
    'Tacos',
    'Steak',
    'Ice Cream',
    'Doughnut',
    'Fruit Salad'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food_panda food List created by "RANIA"'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            elevation: 5,
            child: ListTile(
              leading: Icon(Icons.fastfood, color: Colors.pinkAccent),
              title: Text(foodItems[index]),
              subtitle: Text('Description for ${foodItems[index]}'),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Tapped on ${foodItems[index]}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
