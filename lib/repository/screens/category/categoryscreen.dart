import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class CategoryScreen extends StatefulWidget {
  CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController searchController = TextEditingController();

  var groceryKitchen = [
    {
      "img": "vege.png",
      "text": "Vegetable & \nFruits",
    },
    {
      "img": "aata.png",
      "text": "Atta, Dal & \nRice",
    },
    {
      "img": "oilghee.png",
      "text": "Oil, Ghee & \nMasala",
    },
    {
      "img": "bread.png",
      "text": "Dairy, Bread & \nMilk",
    },
    {
      "img": "biscuit.png",
      "text": "Biscuits & \nBakery",
    }
  ];
  var secondgrocery = [
    {"img": "cereals.png", "text": "Dry Fruits &\n Cereals"},
    {"img": "applicance.png", "text": "Kitchen &\n Appliances"},
    {"img": "coffee.png", "text": "Tea & \nCoffees"},
    {"img": "ice cream.png", "text": "Ice Creams & \nmuch more"},
    {"img": "noodles.png", "text": "Noodles & \nPacket Food"}
  ];
  var snacksanddrinks = [
    {"img": "image 31.png", "text": "Chips &\n Namkeens"},
    {"img": "image 32.png", "text": "Sweets & \nChocalates"},
    {"img": "image 33.png", "text": "Drinks & \nJuices"},
    {"img": "image 34.png", "text": "Sauces &\n Spreads"},
    {"img": "image 35.png", "text": "Beauty &\n Cosmetics"}
  ];
  var household = [
    {"img": "image 36.png"},
    {"img": "image 37.png"},
    {"img": "image 38.png"},
    {"img": "image 39.png"},
    {"img": "image 40.png"}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "Blinkit in",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 14,
                            fontfamily: "bold"),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "16 minutes",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 20,
                            fontfamily: "bold"),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.CustomText(
                            text: "HOME",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 14),
                        UiHelper.CustomText(
                            text: "- Sujal Dave, Ratanada, Jodhpur (Raj)",
                            color: Colors.black,
                            fontweight: FontWeight.bold,
                            fontsize: 14),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 20,
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                left: 30,
                child: UiHelper.CustomTextField(
                  controller: searchController,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Grocery & Kitchen",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: "bold"),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.CustomImage(
                            img: groceryKitchen[index]["img"].toString(),
                          ),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: groceryKitchen[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10),
                    ],
                  );
                },
                itemCount: groceryKitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: secondgrocery[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: secondgrocery[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: secondgrocery.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Snacks & Drinks",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 14,
                  fontfamily: "bold"),
            ],
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0XFFD9EBEB)),
                          child: UiHelper.CustomImage(
                              img: snacksanddrinks[index]["img"].toString()),
                        ),
                      ),
                      UiHelper.CustomText(
                          text: snacksanddrinks[index]["text"].toString(),
                          color: Colors.black,
                          fontweight: FontWeight.normal,
                          fontsize: 10)
                    ],
                  );
                },
                itemCount: snacksanddrinks.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              SizedBox(
                width: 20,
              ),
              UiHelper.CustomText(
                  text: "Household Essentials",
                  color: Colors.black,
                  fontweight: FontWeight.bold,
                  fontsize: 14)
            ],
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      height: 78,
                      width: 71,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0XFFD9EBEB)),
                      child: UiHelper.CustomImage(
                          img: household[index]["img"].toString()),
                    ),
                  );
                },
                itemCount: groceryKitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),


        ],
      ),
    );
  }
}
