import 'package:simple_recipe_app_ui_2/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  final images = [
    "assets/burger.jpg",
    "assets/chicken_g.jpg",
    "assets/chicken_f.jpeg",
    "assets/pizza.jpg",
    "assets/spaghetti.jpg",
  ];

  final foodNames = [
    "Grilled Burger",
    "Crispy Fried Chicken",
    "Grilled Chicken",
    "Pizza",
    "Pasta"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),
            label: "Recipes",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions),
            label: "Subscription",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
        iconSize: 30,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Looking for your favorite meal",
                        style: GoogleFonts.playfairDisplay(fontSize: 30),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    IconButton(
                      icon: const Icon(Icons.search),
                      color: Colors.grey[800],
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.notifications_none),
                      color: Colors.grey[800],
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: size.height * 0.25,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return AspectRatio(
                        aspectRatio: 0.9 / 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Expanded(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  images[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                              ),
                              child: Text(
                                "${foodNames[index]} Recipes",
                                style: GoogleFonts.roboto(
                                  color: Colors.grey[800],
                                  fontSize: 11,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, _) => const SizedBox(
                      width: 16,
                    ),
                    itemCount: 4,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: size.height * 0.4,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DetailScreen(
                                images[4 - index],
                              ),
                            ),
                          );
                        },
                        child: AspectRatio(
                          aspectRatio: 0.9 / 1,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Hero(
                                  tag: images[4 - index],
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30),
                                    child: Image.asset(
                                      images[4 - index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Text(
                                  foodNames[4 - index],
                                  style: GoogleFonts.roboto(
                                    color: Colors.grey[800],
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16.0,
                                ),
                                child: Text(
                                  "Recipe by Bilal",
                                  style: GoogleFonts.roboto(
                                    color: Colors.grey[600],
                                    fontSize: 11,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, _) => const SizedBox(
                      width: 16,
                    ),
                    itemCount: 4,
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
