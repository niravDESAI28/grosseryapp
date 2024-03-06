import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  List<String> imagepath = [
    'asstes/image/image-removebg-preview (84) 1 (2).png',
    'asstes/image/image-removebg-preview (85) 1.png',
    'asstes/image/image-removebg-preview (86) 1.png',
    'asstes/image/image-removebg-preview (89) 1.png',
  ];
  List<String> categories = ['Chocolate', 'Egg', 'Butter', 'Beer'];
  List<String> price = ['₹ 100', '₹ 200', '₹ 300', '₹ 400'];
  List<String> productname = [
    'Bittersweet Chocolate',
    'Egg box',
    'Vegetable oil butter...',
    'Lager beer'
  ];
  List<String> quantity = ['2*90g', '2*80g', '2*85g', '1/2 lit'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 150,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xff971DE2),
              Color(0xffFFE86D),
            ])),
            child: Column(
              children: [
                SizedBox(
                  height: 43,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 30.0),
                      child: Icon(
                        size: 30,
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Shop",
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 140,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.menu,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            itemCount: imagepath.length,
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 270,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: 288,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          imagepath[index],
                          fit: BoxFit.cover,
                          scale: 3,
                        ),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        categories[index],
                        style: GoogleFonts.inter(
                          color: Colors.black45,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        productname[index],
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        quantity[index],
                        style: GoogleFonts.inter(
                          color: Colors.black45,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            price[index],
                            style: GoogleFonts.inter(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // IconButton(onPressed: (){},icon: Icon(Icons.add),),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Add',
                              style: GoogleFonts.inter(
                                color: Color(0xff188806),
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            style: ButtonStyle(
                              side: MaterialStateProperty.all<BorderSide>(
                                BorderSide(
                                  style: BorderStyle.solid,
                                  color: Colors.green,
                                  width: 2, // Change this to the width you want
                                ),
                              ),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 210, 210, 210)),
                ),
              );
            },
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            height: 60,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        size: 25,
                        color: Colors.green,
                      ),
                      Text(
                        "Home",
                        style: GoogleFonts.inter(
                          color: Color(0xff188806),
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.storefront_sharp,
                        size: 25,
                        color: Colors.black,
                      ),
                      Text(
                        "Shop",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                      Text(
                        "Stores",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.shopping_basket_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                      Text(
                        "Cart",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.person_outline_outlined,
                        size: 25,
                        color: Colors.black,
                      ),
                      Text(
                        "Profile",
                        style: GoogleFonts.inter(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}