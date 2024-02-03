import 'package:flutter/material.dart';
import 'package:flutter_task_1/home.dart';
import 'package:flutter_task_1/ui/about.dart';
import 'package:flutter_task_1/ui/contact.dart';
import 'package:flutter_task_1/ui/menus.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
      body: const SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 20),
            Text(
              'OUR SERVICES',
              style: TextStyle(
                fontSize: 25,
                color: Color.fromARGB(255, 167, 37, 57),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            ServiceCardRow(
              serviceCards: [
                ServiceCard(
                  color: Color.fromARGB(255, 125, 186, 237),
                  imageUrl:
                      'https://cdn-icons-png.flaticon.com/512/7755/7755702.png',
                  message: '\nGood Quality Food',
                ),
                ServiceCard(
                  color: Color.fromARGB(255, 140, 227, 143),
                  imageUrl:
                      'https://cdn-icons-png.flaticon.com/512/5952/5952766.png',
                  message: '\nFast Delivery',
                ),
                ServiceCard(
                  color: Color.fromARGB(255, 252, 197, 114),
                  imageUrl:
                      'https://png.pngtree.com/png-vector/20230206/ourmid/pngtree-quality-check-certified-badge-icon-png-image_6583296.png',
                  message: '\nOrganic Guarantee',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ServiceCardRow extends StatelessWidget {
  final List<Widget> serviceCards;

  const ServiceCardRow({super.key, required this.serviceCards});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: serviceCards,
    );
  }
}

class ServiceCard extends StatelessWidget {
  final Color color;
  final String imageUrl;
  final String message;

  const ServiceCard({
    Key? key,
    required this.color,
    required this.imageUrl,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Image.network(
            imageUrl,
            width: 250,
            height: 250,
          ),
          const SizedBox(height: 10.0),
          Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
