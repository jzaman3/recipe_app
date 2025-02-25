// lib/home_screen.dart
import 'package:flutter/material.dart';
import 'details.dart';

class Home extends StatelessWidget {
  final List<Map<String, String>> recipes = [
    {
      'name': 'Milk Tea',
      'ingredients': 'Milk, water, loose black tea leaves, cardamom, bay leaves, cinnamon',
      'instructions': '1. Pour a 1:1 ratio of milk and water in a pot.\n2. Bring to a simmer.'
          '\n3. Add 2-3 cardamom, 2-3 bay leaves, 1 stick cinnamon, and a tablespoon of black tea for'
          'every cup of liquid added to the pot.\n4.Boil until the mixture is golden-brown in color'
          ' then you are done.',
    },
    {
      'name': 'Spaghetti',
      'ingredients': 'Tomatoes, pasta, garlic, onion, celery, carrots, salt, pepper, dry red pepper',
      'instructions': '1. Boil pasta in salted water\n2. Chop vegetables and saute all of them with the remaining ingredients'
          'in a separate pan until cooked. \n3. Strain pasta\n4. Blend all the vegetables and mix with pasta.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recipes',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.grey[200],
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Details(
                      recipeName: recipes[index]['name']!,
                      ingredients: recipes[index]['ingredients']!,
                      instructions: recipes[index]['instructions']!,
                    ),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  recipes[index]['name']!,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}