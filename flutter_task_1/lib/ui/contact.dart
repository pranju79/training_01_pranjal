import 'package:flutter/material.dart';
import 'package:flutter_task_1/home.dart';
import 'package:flutter_task_1/ui/about.dart';
import 'package:flutter_task_1/ui/menus.dart';
import 'package:flutter_task_1/ui/services.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final Color textButtonHoverColor = Colors.black;
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();

  void _submitForm() {
    String name = nameController.text;
    String email = emailController.text;
    String subject = subjectController.text;
    String message = messageController.text;

    print('Name: $name, Email: $email, Subject: $subject, Message: $message');

    nameController.clear();
    emailController.clear();
    subjectController.clear();
    messageController.clear();
  }

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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'CONTACT US',
                  style: TextStyle(
                    fontSize: 25,
                    color: Color.fromARGB(255, 167, 37, 57),
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: subjectController,
                  decoration: const InputDecoration(
                    labelText: 'Subject',
                  ),
                ),
                const SizedBox(height: 16.0),
                TextFormField(
                  controller: messageController,
                  decoration: const InputDecoration(
                    labelText: 'Message',
                  ),
                  maxLines: 2,
                ),
                const SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _submitForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 167, 37, 57),
                  ),
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
