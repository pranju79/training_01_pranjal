import 'package:flutter/material.dart';
import 'package:flutter_task_1/home.dart';
import 'package:flutter_task_1/ui/services.dart';
import 'package:flutter_task_1/ui/about.dart';
import 'package:flutter_task_1/ui/contact.dart';

class Menus extends StatefulWidget {
  const Menus({super.key});

  @override
  State<Menus> createState() => _MenusState();
}

class _MenusState extends State<Menus> {
  final Color textButtonHoverColor = Colors.black;
  List<bool> isVegetarian = [false, true, true, true, false, true];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 167, 37, 57),
        foregroundColor: Colors.white,
        title: const Text(
          'FAST FOOD',
          style: TextStyle(
              color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),
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
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 249, 222, 226),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 167, 37, 57),
              ),
              currentAccountPicture: Image.asset('assets/woman.png'),
              accountName: const Text(
                'Pranjal',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              accountEmail: const Text(
                'pranju9@gmail.com',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
                trailing: Icon(Icons.arrow_right),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.person_2),
              title: Text('Profile'),
              trailing: Icon(Icons.arrow_right),
            ),
            const ListTile(
              leading: Icon(Icons.delivery_dining),
              title: Text('Food Order'),
            ),
            const ListTile(
              leading: Icon(Icons.history),
              title: Text('Order History'),
            ),
            const ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Favourite'),
            ),
            const ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text('Setting'),
            ),
          ],
        ),
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
