import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Task',
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController lEmailController = TextEditingController();
  TextEditingController lPasswordController = TextEditingController();
  TextEditingController rEmailController = TextEditingController();
  TextEditingController rPasswordController = TextEditingController();
  TextEditingController rConPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 11, 122, 69),
        foregroundColor: Colors.white,
        title: const Text(
          'Login and Registration',
          style: TextStyle(fontSize: 30),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 90, 193, 144),
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            // Login Section
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 195, 244, 195),
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
                        backgroundColor: const Color.fromARGB(255, 11, 122, 69),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 20),
            // Registration Section
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 195, 244, 195),
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
                        print('Register Password: ${rPasswordController.text}');
                        // ignore: avoid_print
                        print(
                            'Confirm Password: ${rConPasswordController.text}');
                        rEmailController.clear();
                        rPasswordController.clear();
                        rConPasswordController.clear();
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromARGB(255, 11, 122, 69),
                      ),
                      child: const Text(
                        'Register',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
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
