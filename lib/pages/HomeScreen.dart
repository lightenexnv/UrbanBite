import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanbite_gdgoc/pages/MyOrders.dart';
import 'package:urbanbite_gdgoc/pages/MyProfile.dart';
import 'package:urbanbite_gdgoc/pages/Settings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> restaurantName = const [
      {
        "name": "Bite & Sip",
        "rating": "4.5 ★",
      },
      {
        "name": "Food Fusion",
        "rating": "4.2 ★",
      },
      {
        "name": "Urban Taste",
        "rating": "4.7 ★",
      },
      {
        "name": "Spice Junction",
        "rating": "4.0 ★",
      },
      {
        "name": "Maharaja Dhaba",
        "rating": "4.6 ★",
      },
    ];

    final List<Map<String, dynamic>> foodItems = const [
      {
        "name": "Paneer Burger",
        "price": "₹450",
        "image": "assets/foodimageassets/paneerburger.jpg",
      },
      {
        "name": "White Sauce Pasta",
        "price": "₹500",
        "image": "assets/foodimageassets/whitepasta.jpg",
      },
      {
        "name": "Chocolate Waffles",
        "price": "₹300",
        "image": "assets/foodimageassets/waffles.jpg",
      },
      {
        "name": "Margherita Pizza",
        "price": "₹330",
        "image": "assets/foodimageassets/pizza.jpg",
      },
      {
        "name": "French Fries",
        "price": "₹110",
        "image": "assets/foodimageassets/fries.jpg",
      },
      {
        "name": "Veg Momos",
        "price": "₹220",
        "image": "assets/foodimageassets/Momos.jpg",
      },
    ];

    return Scaffold(
      drawer: Drawer(

        child:
        ListView(
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text("svak3456@gmail.com"),
              accountName: Text("Neil Verma"),
              currentAccountPicture: CircleAvatar(foregroundImage:
                AssetImage("assets/imageassets/ProfilePhoto.jpg"),),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor
              ),
                ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("My Profile"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfile()));
              },
            ),
            ListTile(
              leading: Icon(Icons.reorder),
              title: Text("My Orders"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrders()));
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));
              },
            ),

          ],
        ),

      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white
        ),
        title: Text(
          "UrbanBite",
          style: GoogleFonts.dmSans(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  "Food Categories",
                  style: GoogleFonts.dmSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Flexible(
                flex: 2,
                child: GridView.builder(
                  itemCount: foodItems.length,
                  gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.65,
                  ),
                  itemBuilder: (context, index) {
                    final item = foodItems[index];
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            item["image"],
                            height: 90,
                            width: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          item["name"],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          item["price"],
                          style: GoogleFonts.dmSans(
                            fontSize: 12,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  "Popular Restaurants",
                  style: GoogleFonts.dmSans(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child: ListView.separated(
                  itemCount: restaurantName.length,
                  separatorBuilder: (context, index) => const Divider(
                    height: 10,
                    color: Colors.grey,
                  ),
                  itemBuilder: (context, index) {
                    final restaurant = restaurantName[index];
                    return ListTile(
                      leading: const Icon(Icons.restaurant_menu,
                          color: Colors.orange),
                      title: Text(
                        restaurant["name"],
                        style: GoogleFonts.dmSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      trailing: Text(
                        restaurant["rating"],
                        style: GoogleFonts.dmSans(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
