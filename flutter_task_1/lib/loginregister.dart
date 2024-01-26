// ignore_for_file: file_names
import 'package:flutter/material.dart';

class LoginRegister extends StatefulWidget {
  const LoginRegister({super.key});

  @override
  State<LoginRegister> createState() => _LoginRegisterState();
}

class _LoginRegisterState extends State<LoginRegister> {
  bool showLogin = true;
  TextEditingController lEmailController = TextEditingController();
  TextEditingController lPasswordController = TextEditingController();
  TextEditingController rEmailController = TextEditingController();
  TextEditingController rPasswordController = TextEditingController();
  TextEditingController rConPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 200, 44, 177),
        foregroundColor: Colors.white,
        title: const Text(
          'WELCOME',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              currentAccountPicture: Image.asset('assets/woman.png'),
              accountName: const Text(
                'Pranjal',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              accountEmail: const Text(
                'pranju9@gmail.com',
                style: TextStyle(
                  color: Colors.black,
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
              leading: Icon(Icons.person),
              title: Text('Profile'),
              trailing: Icon(Icons.arrow_right),
            ),
            const ListTile(
              leading: Icon(Icons.book),
              title: Text('Courses'),
              trailing: Icon(Icons.arrow_right),
            ),
            const ListTile(
              leading: Icon(Icons.workspace_premium),
              title: Text('Premium'),
              trailing: Icon(Icons.arrow_right),
            ),
            const ListTile(
              leading: Icon(Icons.video_collection),
              title: Text('Videos'),
              trailing: Icon(Icons.arrow_right),
            ),
            const ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              trailing: Icon(Icons.arrow_right),
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 237, 179, 228),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            if (showLogin)
              // Login Section
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 206, 241),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: lEmailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Email',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: lPasswordController,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
                        ),
                      ),
                      const SizedBox(height: 60),
                      ElevatedButton(
                        onPressed: () {
                          // ignore: avoid_print
                          print('Login Email: ${lEmailController.text}');
                          // ignore: avoid_print
                          print('Login Password: ${lPasswordController.text}');
                          lEmailController.clear();
                          lPasswordController.clear();
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor:
                              const Color.fromARGB(255, 200, 44, 177),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            showLogin = false;
                          });
                        },
                        child: const Text(
                          'Create New Account',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (!showLogin)
              // Registration Section
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 206, 241),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      TextFormField(
                        controller: rEmailController,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: 'Email',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: rPasswordController,
                        decoration: const InputDecoration(
                          labelText: 'Password',
                          hintText: 'Password',
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: rConPasswordController,
                        decoration: const InputDecoration(
                          labelText: 'Confirm Password',
                          hintText: 'Confirm Password',
                        ),
                      ),
                      const SizedBox(height: 60),
                      ElevatedButton(
                        onPressed: () {
                          // ignore: avoid_print
                          print('Register Email: ${rEmailController.text}');
                          // ignore: avoid_print
                          print(
                              'Register Password: ${rPasswordController.text}');
                          // ignore: avoid_print
                          print(
                              'Confirm Password: ${rConPasswordController.text}');
                          rEmailController.clear();
                          rPasswordController.clear();
                          rConPasswordController.clear();
                        },
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor:
                              const Color.fromARGB(255, 200, 44, 177),
                        ),
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            showLogin = true;
                          });
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
