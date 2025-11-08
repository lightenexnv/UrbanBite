import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urbanbite_gdgoc/pages/ProductDetailPage.dart';

class Homepagecontent extends StatefulWidget {
  const Homepagecontent({super.key});

  @override
  State<Homepagecontent> createState() => _HomepagecontentState();
}

class _HomepagecontentState extends State<Homepagecontent> {
  @override
  Widget build(BuildContext context) {
    int myCurrentIndex = 0;
    final size = MediaQuery.of(context).size;

    final List<Map<String, dynamic>> PromotionImage = const [
      {
        "image": "assets/foodimageassets/imageassetpromotion1.jpg",
      },
      {
        "image": "assets/foodimageassets/imageassetpromotion1.jpg",
      },
      {
        "image": "assets/foodimageassets/imageassetpromotion1.jpg",
      },
      {
        "image": "assets/foodimageassets/imageassetpromotion1.jpg",
      },
      {
        "image": "assets/foodimageassets/imageassetpromotion1.jpg",
      },
    ];

    final List<Map<String, dynamic>> foodCardItems = [
      {
        "name": "Chicken Burger",
        "restaurant": "Cookie Heaven",
        "time": "15 min",
        "calories": "500 Kal",
        "price": "\$30.00",
        "rating": 4.5,
        "image": "assets/foodimageassets/burger1.jpg",
      },
      {
        "name": "BBQ Burger",
        "restaurant": "Cookie Heaven",
        "time": "15 min",
        "calories": "500 Kal",
        "price": "\$30.00",
        "rating": 4.5,
        "image": "assets/foodimageassets/burger1.jpg",
      },
    ];

    final List<Map<String, dynamic>> recommendedItems = const [
      {
        "name": "Cheeseburger",
        "price": "\$15.00",
        "rating": 4.5,
        "restaurant": "Cookie Heaven, Fluttertop",
        "address": "54 Summit Street",
        "image": "assets/foodimageassets/burger1.jpg",
      },
      {
        "name": "Classic Cheeseburger",
        "price": "\$15.00",
        "rating": 4.5,
        "restaurant": "Cookie Heaven",
        "image": "assets/foodimageassets/burger1.jpg",
      },
      {
        "name": "Bacon Cheeseburger",
        "price": "\$15.00",
        "rating": 4.5,
        "restaurant": "Cookie Heaven",
        "image": "assets/foodimageassets/burger1.jpg",
      },
      {
        "name": "Chicken Burger",
        "price": "\$15.00",
        "rating": 4.5,
        "restaurant": "Cookie Heaven",
        "image": "assets/foodimageassets/burger1.jpg",
      },
    ];
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: size.width * 0.05,
                      horizontal: size.width * 0.05,
                    ),
                    child: Row(
                      children: [
                        Flexible(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: Colors.grey,
                                  size: size.height * 0.03,
                                ),
                                SizedBox(
                                  width: size.height * 0.01,
                                ),
                                Text(
                                  "Ganga Nagar Colony, Jagadhri",
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.w500, color: Colors.grey),
                                ),
                              ],
                            )),
                        Row(
                          children: [
                            IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.shopping_cart_outlined))
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05, vertical: 8),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          hintText: "Order Food..",
                          hintStyle: GoogleFonts.dmSans(
                              fontSize: 14, color: Colors.grey[600]),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: size.width * 0.04, vertical: 10),
                          border: InputBorder.none,
                          prefixIcon:
                          Icon(Icons.search, color: Colors.grey[600], size: 20),
                          suffixIcon:
                          Icon(Icons.mic, color: Colors.grey[600], size: 20),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.03),
                  Center(
                    child: Container(
                      height: size.height * 0.2,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: PromotionImage.length,
                        itemBuilder: (context, index) {
                          final item = PromotionImage[index];
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Container(
                                height: 120,
                                width: size.width * 0.85,
                                color: Colors.grey[200],
                                child: Image.asset(
                                  item["image"],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: size.height * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05, vertical: 8),
                    child: Row(
                      children: [
                        Flexible(
                            child: Row(
                              children: [
                                Text(
                                  "Your trusted picks",
                                  style: GoogleFonts.dmSans(
                                      fontSize: size.height * 0.02,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                        InkWell(
                          onTap: () {},
                          borderRadius: BorderRadius.circular(8),
                          child: Text(
                            "View all",
                            style: GoogleFonts.dmSans(
                                fontSize: size.height * 0.015,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: size.width * 0.017, vertical: size.height * 0.017),
                      child: Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: size.width * 0.05),
                          child: Row(
                            children: [
                              Flexible(
                                  child: InkWell(onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Productdetailpage()));
                                  }, child:
                                  Container(
                                    width: size.width * 0.4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 6,
                                            offset: Offset(0, 3),
                                          )
                                        ]),
                                    child: Stack(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(10
                                              ),
                                              child: Image.asset(
                                                "assets/foodimageassets/burger1.jpg",
                                                height: size.height * 0.15,
                                                width: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 8, vertical: 4),
                                              child: Text(
                                                "Burger",
                                                style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: size.height * 0.022,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "Hangries",
                                                style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                  fontSize: size.height * 0.018,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 8, vertical: 4),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.timer,
                                                      color: Colors.grey,
                                                      size: size.height * 0.018),
                                                  SizedBox(width: 4),
                                                  Text(
                                                    "15 Min | 500 Cal",
                                                    style: GoogleFonts.dmSans(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey,
                                                      fontSize: size.height * 0.015,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "\$30.00",
                                                style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                  fontSize: size.height * 0.018,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                          ],
                                        ),
                                        Positioned(bottom: 8,
                                            right:8 ,
                                            child:
                                            InkWell(onTap: () {},
                                              child: Container(height:30,
                                                width:30,child:
                                                Icon(Icons.add, color: Colors.white,),
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius: BorderRadius.circular(100)
                                                ),
                                              ),
                                            )
                                        )
                                      ],

                                    ),
                                  ),)
                              ),
                              SizedBox(width: size.width * 0.06),
                              Flexible(
                                  child: InkWell(onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Productdetailpage()));
                                  },child: Container(
                                    width: size.width * 0.4,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black26,
                                            blurRadius: 6,
                                            offset: Offset(0, 3),
                                          )
                                        ]),
                                    child: Stack(
                                      children: [
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ClipRRect(
                                              borderRadius: BorderRadius.circular(10),
                                              child: Image.asset(
                                                "assets/foodimageassets/burger1.jpg",
                                                height: size.height * 0.15,
                                                width: double.infinity,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 8, vertical: 4),
                                              child: Text(
                                                "BBQ Burger",
                                                style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: size.height * 0.022,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "Cookie Heaven",
                                                style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                  fontSize: size.height * 0.018,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 8, vertical: 4),
                                              child: Row(
                                                children: [
                                                  Icon(Icons.timer,
                                                      color: Colors.grey,
                                                      size: size.height * 0.018),
                                                  SizedBox(width: 4),
                                                  Text(
                                                    "23 Min | 590 Cal",
                                                    style: GoogleFonts.dmSans(
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.grey,
                                                      fontSize: size.height * 0.015,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.symmetric(horizontal: 8),
                                              child: Text(
                                                "\$30.00",
                                                style: GoogleFonts.dmSans(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black87,
                                                  fontSize: size.height * 0.018,
                                                ),
                                              ),
                                            ),
                                            SizedBox(height: 8),
                                          ],
                                        ),
                                        Positioned(bottom:8 ,
                                            right:8,
                                            child: InkWell(
                                              onTap: () {},
                                              child: Container(height:30,
                                                width:30,child:
                                                Icon(Icons.add, color: Colors.white,),
                                                decoration: BoxDecoration(
                                                    color: Colors.black,
                                                    borderRadius: BorderRadius.circular(100)
                                                ),),
                                            ))
                                      ],
                                    ),
                                  ),)
                              ),
                            ],
                          ))),
                  SizedBox(height: size.height * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05, vertical: 8),
                    child: Row(
                      children: [
                        Text(
                          "Recommended",
                          style: GoogleFonts.dmSans(
                              fontSize: size.height * 0.02,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  ListView.builder(padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: recommendedItems.length,itemBuilder: (context,index) {
                        final item = recommendedItems[index];
                        return GestureDetector(
                            onTap: () {

                            },
                            child:
                            InkWell(onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => Productdetailpage()));

                            },child:
                            Container(margin: EdgeInsets.only(bottom: 16),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(16)
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(16),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Image.asset(item["image"],
                                        height: 120,
                                        width: 120,
                                        fit: BoxFit.cover,),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,

                                    children: [
                                      Text(
                                        item["name"],
                                        style: GoogleFonts.dmSans(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      Text(
                                        item["restaurant"],
                                        style: GoogleFonts.dmSans(
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey[600]
                                        ),),
                                      Row(
                                        children: [Icon(Icons.location_on,
                                          color: Colors.grey[600],
                                          size: 14,),
                                          Text(
                                            item["restaurant"],
                                            style: GoogleFonts.dmSans(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.grey[600]
                                            ),),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            item["price"],
                                            style: GoogleFonts.dmSans(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),),
                                          SizedBox(width: size.width*0.18,),
                                          ElevatedButton(
                                            onPressed: () {},
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.black,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30),
                                              ),
                                              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                                            ),
                                            child: Row(
                                              children: const [
                                                Icon(Icons.add, color: Colors.white, size: 18),
                                                SizedBox(width: 4),
                                                Text(
                                                  "Add",
                                                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                          )

                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),),)
                        );

                      })


                ],
              ))),
    );
  }
}
