import 'dart:math';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 238, 236, 236),
        title: const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Text(
            'Hello, Patricia',
            style: TextStyle(
              fontSize: 36,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const SizedBox(
              width: 350,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 182, 2),
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 50, top: 35),
                  child: Text(
                    'GoMeal.',
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.white,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const ListTile(
                leading: Icon(Icons.food_bank_outlined),
                title: Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.delivery_dining),
              title: Text(
                'Food Order',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.favorite),
              title: Text(
                'Favourite',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.message),
              title: Text(
                'Message',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.history),
              title: Text(
                'Order History',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.receipt),
              title: Text(
                'Bills',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Setting',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 238, 236, 236),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(40, 38, 40, 41),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 240,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 248, 182, 2),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 43, left: 52),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Get Discount Voucher \nUp To 20%',
                              style: TextStyle(
                                fontSize: 32,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 16),
                              child: Text(
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do \neiusmod tempor incididunt. ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 45),
                        child: Image.asset(
                          'assets/image2.png',
                          width: 350,
                          height: 240,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 248, 182, 2),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Color.fromARGB(255, 248, 182, 2),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        List<String> imageAssets = [
                          'assets/iconbakery.png',
                          'assets/iconburger.png',
                          'assets/iconbeverage.png',
                          'assets/iconchicken.png',
                          'assets/iconpizza.png',
                          'assets/iconseafood.png',
                          'assets/iconfries.png',
                          'assets/iconsandwich.png',
                          'assets/icontaco.png',
                          'assets/icondonut.png',
                        ];
                        List<String> itemTexts = [
                          'Bakery',
                          'Burger',
                          'Beverage',
                          'Chicken',
                          'Pizza',
                          'Seafood',
                          'French Fries',
                          'Sandwich',
                          'Taco',
                          'Donut',
                        ];
                        index %= min(imageAssets.length, itemTexts.length);
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            padding: const EdgeInsets.all(32),
                            width: 160,
                            height: 160,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  imageAssets[index],
                                  width: 59,
                                  height: 59,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Text(
                                    itemTexts[index],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromARGB(255, 115, 115, 115),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Text(
                      'Popular Dishes',
                      style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 248, 182, 2),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Color.fromARGB(255, 248, 182, 2),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        List<String> imageAssets = [
                          'assets/burger1.png',
                          'assets/burger2.png',
                          'assets/burger3.png',
                          'assets/burger4.png',
                          'assets/burger5.png',
                        ];
                        List<String> itemTexts = [
                          'Fish Burger',
                          'Beef Burger',
                          'Cheese Burger',
                          'Jumbo Burger',
                          'Chicken Burger',
                        ];

                        index %= min(imageAssets.length, itemTexts.length);
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            padding: const EdgeInsets.all(32),
                            width: 400,
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Text(
                                      '15% Off',
                                      style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        color: Colors.white,
                                        fontSize: 16,
                                        backgroundColor: Colors.red,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 230),
                                      child: Icon(Icons.favorite,
                                          color: Colors.red),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Image.asset(
                                    imageAssets[index],
                                    width: 200,
                                    height: 180,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        itemTexts[index],
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Expanded(
                                      child: Text(
                                        'Rs.99',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontStyle: FontStyle.normal,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.add_box),
                                      color: const Color.fromARGB(
                                          255, 248, 182, 2),
                                      iconSize: 36,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Text(
                      'Recent Order',
                      style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'View all',
                          style: TextStyle(
                            fontSize: 20,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            color: Color.fromARGB(255, 248, 182, 2),
                          ),
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Color.fromARGB(255, 248, 182, 2),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                SizedBox(
                  height: 350,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        List<String> imageAssets = [
                          'assets/burger1.png',
                          'assets/japanramen.png',
                          'assets/friedrice.png',
                        ];
                        List<String> itemTexts = [
                          'Fish Burger',
                          'Japan Ramen',
                          'Fried Rice',
                        ];

                        index %= min(imageAssets.length, itemTexts.length);
                        return Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            padding: const EdgeInsets.all(32),
                            width: 400,
                            height: 400,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(color: Colors.white),
                              color: Colors.white,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 300),
                                      child: Icon(Icons.favorite,
                                          color: Colors.red),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60),
                                  child: Image.asset(
                                    imageAssets[index],
                                    width: 200,
                                    height: 180,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 110),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          itemTexts[index],
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 131),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'Rs.99',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontStyle: FontStyle.normal,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(left: 93),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          '4.97km   • 21 min',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontStyle: FontStyle.normal,
                                            color: Color.fromARGB(
                                                255, 115, 115, 115),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
