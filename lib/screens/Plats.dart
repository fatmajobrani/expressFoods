import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  List<String> tunisianFood = [
    "Couscous",
    "Ojja",
    "Slata",
    "Slata",
    "makrouna",
  ];

  final List<String> foodImages = [
    'assets/images/coscous.png',
    'assets/images/ojja.png',
    'assets/images/ojja.png',
    'assets/images/makrouna.png',
    'assets/images/slata.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Foodies Express',
                          style:
                              TextStyle(color: Color(0XFF7DAA4F), fontSize: 22),
                        ),
                        Text(
                          'Your Destination for Quick, Quality Eats \n Delivered with Passion!',
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors
                          .transparent, // Optional: To avoid extra color around the image
                      child: ClipOval(
                        child: Image.asset(
                          'assets/images/avatar.jpg',
                          fit: BoxFit
                              .cover, // Ensures the image fills the circle
                          width: 48, // Set width and height to match radius * 2
                          height: 48,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: searchController,
                  onChanged: (value) {
                    // Add logic here for filtering or searching
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      color: Colors.grey,
                    ),
                    hintText: 'Search...',
                    hintStyle: const TextStyle(color: Colors.grey),
                    fillColor: Colors.white,
                    filled: true, // Adds background color
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Color(0XFF7DAA4F), // Border color
                        width: 1.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Color(0XFF7DAA4F), // Border color
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color:
                            Color(0XFF7DAA4F), // Highlight border when focused
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 35, // Set the height of each item
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount:
                        10, // Set the number of items you want, or use a list length
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(left: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: index == 0
                              ? const Color(0XFF7DAA4F)
                              : Colors.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 16.0),
                          child: Text(
                            tunisianFood[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: index == 0
                                  ? Colors.white
                                  : const Color(0XFF7DAA4F),
                            ),
                          ),
                        ),
                      );
                      //
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 138,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0XFF7DAA4F),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Cheese Sandwich",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Le sandwich au fromage est un repas simple \n et apprécié par tous. Facile à préparer, il \n convient aux enfants, aux étudiants \n et aux personnes pressées.",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 600,
                  width: double.infinity,
                  child: GridView.builder(
                    scrollDirection: Axis.vertical,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, // Two items per row
                      mainAxisSpacing: 8, // Space between rows
                      crossAxisSpacing: 8, // Space between columns
                      childAspectRatio: 80 / 80,
                    ),
                    itemCount: tunisianFood.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      topRight: Radius.circular(10),
                                    ),
                                    child: Image.asset(
                                      foodImages[index], // Food image
                                      height: 120,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      tunisianFood[index], // Food name
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            // Favorite icon (top-right)
                            Positioned(
                              top: 8,
                              right: 8,
                              child: IconButton(
                                onPressed: () {
                                  // Handle favorite action
                                },
                                icon: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              ),
                            ),
                            // Shop icon (bottom-right)
                            Positioned(
                              bottom: 8,
                              right: 8,
                              child: IconButton(
                                onPressed: () {
                                  // Handle shop action
                                },
                                icon: const Icon(
                                  Icons.shopping_cart,
                                  color: Colors.teal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
