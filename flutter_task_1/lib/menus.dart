import 'package:flutter/material.dart';

class Menus extends StatefulWidget {
  const Menus({super.key});

  @override
  State<Menus> createState() => _MenusState();
}

class _MenusState extends State<Menus> {
  List<bool> isVegetarian = [false, true, true, true, false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MENU'),
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            const Text(
              '\nOUR MENU',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 167, 37, 57),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            fastfood(),
          ],
        ),
      ),
    );
  }

  Widget fastfood() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return buildCard(index);
      },
    );
  }

  Widget buildCard(int index) {
    List<String> images = [
      'pizza.jpg',
      'sandwich.jpg',
      'taco.jpg',
      'coffee.jpg',
      'burger.jpg',
      'fries.jpeg',
    ];

    List<double> productPrices = [199, 90, 100, 60, 80, 60];

    return InkWell(
      onHover: (hover) {},
      child: Card(
        elevation: 5.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Flexible(
              child: Image.asset(
                'assets/${images[index]}',
                width: 450,
                height: 350,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                getProductName(index),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Rs. ${productPrices[index].toStringAsFixed(2)}       ',
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                Image.asset(
                  isVegetarian[index]
                      ? 'assets/vegicon.png'
                      : 'assets/nonvegicon.png',
                  width: 25,
                  height: 25,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 167, 37, 57),
              ),
              child: const Text(
                'Order Now',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getProductName(int index) {
    List<String> productNames = [
      'Pizza',
      'Sandwich',
      'Taco',
      'Coffee',
      'Burger',
      'Fries'
    ];
    return productNames[index];
  }
}
