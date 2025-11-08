import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Productdetailpage extends StatefulWidget {
  const Productdetailpage({super.key});

  @override
  State<Productdetailpage> createState() => _ProductdetailpageState();
}

class _ProductdetailpageState extends State<Productdetailpage> {
  int _quantity = 2;


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: height*0.12,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Amount", style: GoogleFonts.dmSans(
                      fontSize: height*0.02,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),),
                  Text("\$ 30", style: GoogleFonts.dmSans(
                      fontSize: height*0.04,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                  ),),
                  
                ],
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFEB3A42),
                        padding: EdgeInsets.symmetric(vertical:16,horizontal: 50),
                      ),
                      child: Text("Add To Cart",
                        style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),))
                ],
              )
            ],
          ),
        ),
      ),

      body: SafeArea(child: Column(
        children: [
          Padding(padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
            vertical: 16,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
              IconButton(
                icon: const Icon(Icons.search, color: Colors.black),
                onPressed: () {},
              ),],
          ),),
          Container(height: height*0.4,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black
          ),child: Image.asset("assets/foodimageassets/burger1.jpg",
            fit: BoxFit.cover,),
            ),
          Expanded(child:
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [Text("Cheese Burger",style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.bold,
                            fontSize: height*0.03
                          ),),
                            Text("54 Sumit Street",style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600],
                                fontSize: height*0.02
                            ),)

                          ],
                        ),
                      ),

                      Container(
                        child: Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(onTap: () {
                              if(_quantity>0){
                                setState(() => _quantity--);
                              };
                            },child:
                            Container(height: 40, width: 40,child: Icon(Icons.remove,color: Colors.white,),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50)

                              ),
                            ),
                            ),
                            SizedBox(width: 18,),
                            Text("$_quantity",style: GoogleFonts.dmSans(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),),
                            SizedBox(width: 18,),
                            InkWell(onTap: () {
                              setState(() => _quantity++);
                            },child:
                            Container(height: 40, width: 40,child: Icon(Icons.add,color: Colors.white,),
                              decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(50)

                              ),
                            ),
                            ),
                          ],
                        )

                        ,
                      )
                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.star_border,color: Color(0xFFEB3A42),size: height*0.038,),
                      Text("4.5", style: GoogleFonts.dmSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: height*0.025),),
                      Text("|", style: GoogleFonts.dmSans(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: height*0.025),),
                      Icon(Icons.timer_outlined,color: Color(0xFFEB3A42),size: height*0.038,),
                      Text("8-10 Min", style: GoogleFonts.dmSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: height*0.025),),
                      Text("|", style: GoogleFonts.dmSans(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: height*0.025),),
                      Icon(Icons.local_fire_department_outlined,color: Color(0xFFEB3A42),size: height*0.038,),
                      Text("124 Kcal", style: GoogleFonts.dmSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: height*0.025),),





                    ],
                  ),
                  SizedBox(height: height*0.02,),
                  Text(
                    "Protein-50gm, Carbs-10gm, Fats-15gm (The unique recipe will make you fly in creaminess of cheeseburger) Protein-50gm, Carbs-10gm, Fats-15gm (The unique recipe will make you fly in creaminess of cheeseburger)Protein-50gm, Carbs-10gm, Fats-15gm (The unique recipe will make you fly in creaminess of cheeseburger)",
                    style: GoogleFonts.dmSans(
                      fontSize: 15,
                      color: Colors.grey[700],
                      height: 1.6,
                    ),
                  ),
                  SizedBox(height: height*0.02,),
                  InkWell(onTap: () {}, child:
                  Text("Customize >", style: GoogleFonts.dmSans(color: Color(0xFFEB3A42)
                      ,fontWeight: FontWeight.bold,fontSize: height*0.02),),
                  ),
                  Container(

                  )
                ],
              ),
            ),
          )
          )
        ],
      )),
    );
  }
}
