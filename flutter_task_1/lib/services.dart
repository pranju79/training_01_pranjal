import 'package:flutter/material.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SERVICES'),
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
