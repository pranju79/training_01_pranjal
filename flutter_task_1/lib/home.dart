import 'package:flutter/material.dart';
import 'package:flutter_task_1/menus.dart';
import 'package:flutter_task_1/services.dart';
import 'package:flutter_task_1/about.dart';
import 'package:flutter_task_1/contact.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Color textButtonHoverColor = Colors.black;
  final Color iconButtonHoverColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 37, 57),
        title: const Text(
          'FAST FOOD',
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(
          Icons.fastfood,
          color: Colors.white,
          size: 40,
        ),
        actions: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                );
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith(
                  (states) => states.contains(MaterialState.hovered)
                      ? textButtonHoverColor
                      : null,
                ),
              ),
              child: const Text(
                'HOME',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Menus()),
                );
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith(
                  (states) => states.contains(MaterialState.hovered)
                      ? textButtonHoverColor
                      : null,
                ),
              ),
              child: const Text(
                'MENUS',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Services()),
                );
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith(
                  (states) => states.contains(MaterialState.hovered)
                      ? textButtonHoverColor
                      : null,
                ),
              ),
              child: const Text(
                'SERVICES',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const About()),
                );
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith(
                  (states) => states.contains(MaterialState.hovered)
                      ? textButtonHoverColor
                      : null,
                ),
              ),
              child: const Text(
                'ABOUT',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Contact()),
                );
              },
              style: ButtonStyle(
                overlayColor: MaterialStateProperty.resolveWith(
                  (states) => states.contains(MaterialState.hovered)
                      ? textButtonHoverColor
                      : null,
                ),
              ),
              child: const Text(
                'CONTACT US',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              splashColor: iconButtonHoverColor,
              hoverColor: iconButtonHoverColor,
            ),
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.account_circle,
                color: Colors.white,
                size: 30,
              ),
              splashColor: iconButtonHoverColor,
              hoverColor: iconButtonHoverColor,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            Image.asset(
              'assets/fastfood.jpg',
              width: 1500,
              height: 450,
              fit: BoxFit.fill,
            ),
            const Text(
              '\nPOPULAR ITEMS',
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
      'burger.jpg',
      'pizza.jpg',
      'fries.jpeg',
      'sandwich.jpg',
      'taco.jpg',
      'coffee.jpg',
    ];

    return InkWell(
      onHover: (hover) {},
      child: Card(
        elevation: 5.0,
        child: Column(
          children: [
            Image.asset(
              'assets/${images[index]}',
              width: 450,
              height: 350,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                getProductName(index),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 24,
                  color: Colors.black,
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
      'Burger',
      'Pizza',
      'Fries',
      'Sandwich',
      'Taco',
      'Coffee'
    ];
    return productNames[index];
  }
}
