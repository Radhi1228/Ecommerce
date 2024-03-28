import 'package:ecom_app/utils/global.dart';
import 'package:flutter/material.dart';
import 'product_screen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}
class _HomescreenState extends State<Homescreen> {
  bool ismobile = true;
  bool islaptop = true;
  int select = 20000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Discover",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding:  EdgeInsets.all(12.0),
            child: InkWell(
              onTap: (){
                Navigator.pushNamed(context,'cart');
              },
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.black12)
                ),
                child: const Icon(Icons.shopping_bag_outlined, color: Colors.black),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                height: 50,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Search",
                        style: TextStyle(
                            color: Colors.grey.shade600, fontSize: 15)),
                    const Icon(
                      (Icons.search),
                    )
                  ],
                ),
              ),       //search
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: MediaQuery.sizeOf(context).width,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      image: AssetImage("assets/Image/main.png"),
                      fit: BoxFit.cover
                  ),
                ),
                //child: Image.asset("assets/Image/Ads.jpeg",fit: BoxFit.cover,),
              ),        //main image
              const SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.green.shade400,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )
                ],
              ),              //categories
              const SizedBox(height: 3,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 45,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: const Text("All",
                          style: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.normal)
                      ),
                    ),
                    Row(
                        children: List.generate(
                          productList.length,
                              (index) => InkWell(
                                onTap: (){
                                  setState(() {

                                  });
                                },
                                child: Container(
                            margin: const EdgeInsets.only(left: 10),
                            height: 42,
                            width: 130,
                            decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black, width: 2),
                                  borderRadius: BorderRadius.circular(15)),
                            alignment: Alignment.center,
                            child: Text("${productList[index]['Name']}",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal)),
                          ),
                              ),
                        ),
                    ),
                  ],
                ),
              ),
              DropdownButton(items: [
                DropdownMenuItem(
                child:
                Text("Up to 20K"),value: 20000,
              ),
                DropdownMenuItem(
                  child:
                  Text("Up to 40K"),value: 40000,
                ),
                DropdownMenuItem(
                  child:
                  Text("Up to 60K"),value: 60000,
                ),
                DropdownMenuItem(
                  child:
                  Text("Up to 80K"),value: 80000,
                ),
                DropdownMenuItem(
                  child:
                  Text("Up to 1l"),value: 100000,
                ),
              ],

                  onChanged: onChanged
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("MobilePhones",
                      style:
                      TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        mobileList.length,
                            (index) => InkWell(
                          onTap:() {
                            Map m1 = mobileList[index];
                            Navigator.pushNamed(context, 'product',arguments: m1);
                          },
                          child: Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(right: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  height: 170,
                                  width: 180,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade50,
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "${mobileList[index]['image']}")
                                      ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 5),
                                    ),
                                    Text(
                                      "${mobileList[index]['name']}",
                                      style: const TextStyle(
                                          color: Colors.red, fontSize: 16),
                                    ),
                                    const SizedBox(
                                      width: 35,
                                    ),
                                    const Icon(Icons.star_rate,
                                        color: Colors.amber),
                                    Text(
                                      "${mobileList[index]['rate']}",
                                      style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "₹${mobileList[index]['price']}",
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),//mobile
                    ),
                  ), //Mobile
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Laptop",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        laptopList.length,
                            (index) => InkWell(
                              onTap: (){
                                Map m2 = laptopList[index];
                                Navigator.pushNamed(context, 'product',arguments: m2);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.only(right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      height: 170,
                                      width: 180,
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: Colors.grey.shade100,
                                          borderRadius: BorderRadius.circular(20),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "${laptopList[index]['image']}")
                                          )
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 5),
                                        ),
                                        Text(
                                          "${laptopList[index]['name']}",
                                          style: const TextStyle(
                                              color: Colors.red, fontSize: 16),
                                        ),
                                        const SizedBox(
                                          width: 30,
                                        ),
                                        const Icon(Icons.star_rate,
                                            color: Colors.amber),
                                        Text(
                                          "${laptopList[index]['rate']}",
                                          style: const TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      "₹${laptopList[index]['price']}",
                                      style: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                      ),
                    ),
                  ),
                  //Laptop
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}