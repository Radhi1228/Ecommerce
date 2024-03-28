import 'package:ecom_app/utils/global.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  @override
  Widget build(BuildContext context) {
    Map m1 = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        FloatingActionButton.small(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          backgroundColor: Colors.grey.shade100,
                          child: const Icon(Icons.arrow_back_ios_new_outlined),
                        ),
                        const SizedBox(width: 250),

                        //1
                        FloatingActionButton.small(
                          onPressed: () {},
                          backgroundColor: Colors.grey.shade100,
                          child: Icon(
                            Icons.favorite_outlined,
                            color: Colors.red.shade200,
                          ),
                        ),
                        const SizedBox(width: 0.5),
                        //2
                        FloatingActionButton.small(
                          onPressed: () {},
                          backgroundColor: Colors.grey.shade100,
                          child: const Icon(
                            Icons.person,
                          ),
                        ),
                      ],
                    ), // back
                    Image(image: AssetImage("${m1['image']}"), height: 350),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("${m1['name']}",
                              style: const TextStyle(fontSize: 35)),
                          Container(
                            height: 40,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Colors.red.shade400,
                                borderRadius: BorderRadius.circular(15)),
                            alignment: Alignment.center,
                            child: const Text("% On sale",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                            ),
                          ) //on sale
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Container(
                            height: 35,
                            width: 65,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey)),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Icon(Icons.star,
                                      color: Colors.orangeAccent),
                                  Text("${m1['rate']}",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 15)),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 35,
                            width: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.grey)),
                            alignment: Alignment.center,
                            child: const Text("👍 review",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "117 reviews",
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ), //rate,review
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                          "Amazon Ads FAQ · Sponsored Products, Sponsored Brands,"
                          " and Sponsored Display are cost-per-click ads, "
                          "meaning you pay only when customers click your ad, and you..!"
                          "and Sponsored Display are cost-per-click ads,"
                          "meaning you pay only when customers click your ad..",
                          style: TextStyle(
                              letterSpacing: 1.2, fontWeight: FontWeight.w500)),
                    ), //caption
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.green.shade500,
                                borderRadius: BorderRadius.circular(15)),
                            alignment: Alignment.center,
                            child: const Text("1 TB",
                                style: TextStyle(color: Colors.white)),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 40,
                            width: 85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            alignment: Alignment.center,
                            child: const Text("825 GB",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 40,
                            width: 85,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            alignment: Alignment.center,
                            child: const Text("512 GB",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16)),
                          ),
                        ],
                      ), // 1tb,825gb,512gb
                    ),

                    const SizedBox(
                      height: 15,
                    ),
                    Divider(
                      color: Colors.grey.shade300,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "₹ 1,25,000",
                          style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.lineThrough),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "${m1['price']}",
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            FloatingActionButton.extended(
                              onPressed: () {
                                cartList.add(m1);
                                Navigator.pop(context);
                              },
                              label: const Text("Add to Cart"),
                              icon: const Icon(Icons.shopping_cart),
                              backgroundColor: Colors.green,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
