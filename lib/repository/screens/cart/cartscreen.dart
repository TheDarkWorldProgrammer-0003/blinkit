import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController searchController = TextEditingController();

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
                )),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        UiHelper.CustomImage(img: "shopping_cart.png"),
        SizedBox(
          height: 20,
        ),
        UiHelper.CustomText(
            text: "Reordering will be easy",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 16,
            fontfamily: "bold"),
        UiHelper.CustomText(
            text: "Items you order will show up here so you can buy",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 12),
        UiHelper.CustomText(
            text: "them again easily.",
            color: Colors.black,
            fontweight: FontWeight.bold,
            fontsize: 12),
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            UiHelper.CustomText(
                text: "Best Sellers",
                color: Colors.black,
                fontweight: FontWeight.bold,
                fontsize: 20,
                fontfamily: 'bold'),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Stack(
              children: [
                UiHelper.CustomImage(img: "milk.png"),
                Padding(
                  padding: EdgeInsets.only(
                    top: 95,
                    left: 65,
                  ),
                  child: UiHelper.CustomButton(() {}),
                ),
                UiHelper.CustomText(
                    text: 'Amul Taaza Toned',
                    color: Colors.black,
                    fontweight: FontWeight.normal,
                    fontsize: 10),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Stack(
              children: [
                UiHelper.CustomImage(img: "potato.png"),
                Padding(
                  padding: EdgeInsets.only(
                    top: 95,
                    left: 65,
                  ),
                  child: UiHelper.CustomButton(() {}),
                ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                Stack(
                  children: [
                    UiHelper.CustomImage(img: "tomato.png"),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 95,
                        left: 65,
                      ),
                      child: UiHelper.CustomButton(() {}),
                    )
                  ],
                ),
              ],
            )
          ],
        )
    );
  }
}
