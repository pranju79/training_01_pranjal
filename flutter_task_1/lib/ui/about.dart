import 'package:flutter/material.dart';
import 'package:flutter_task_1/home.dart';
import 'package:flutter_task_1/ui/contact.dart';
import 'package:flutter_task_1/ui/menus.dart';
import 'package:flutter_task_1/ui/services.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  final Color textButtonHoverColor = Colors.black;
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/fastfood.jpg',
                width: 1500,
                height: 400,
                fit: BoxFit.fill,
              ),
              const Center(
                child: Text(
                  '\nAbout Our Fast Food Restaurant',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 167, 37, 57),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Welcome to FastFeast, your ultimate destination for delicious fast food! At FastFeast, we take pride in serving high-quality, mouth-watering meals at affordable prices.',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Our Mission:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'To provide our customers with tasty and convenient fast food options while maintaining the highest standards of quality and customer service.',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Our Menu:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Explore our diverse menu featuring a wide range of burgers, sandwiches, fries, salads, and desserts. We also offer vegetarian and gluten-free options to cater to all dietary preferences.',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                'Location:',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Visit us at 123 Main Street, Pune. We are open 7 days a week from 10:00 AM to 10:00 PM.',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
