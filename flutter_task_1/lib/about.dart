import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ABOUT US'),
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
