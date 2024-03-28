import 'package:ecom_app/utils/global.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}
class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Screen",
        ),
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink.shade100,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
              cartList.length, (index) => Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Image(
                    image:AssetImage("${cartList[0]['image']}")
                ),
              ),
              const SizedBox(width: 5,),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("${cartList[0]['name']}",
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                  const SizedBox(height:5),
                  Text("${cartList[0]['rate']}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height:5),
                  Text("${cartList[0]['price']}",
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height:10),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: (){
                  setState(() {
                    cartList.removeAt(index);
                  });
                },
                child:const  Icon(Icons.delete),
              ),
            ],
          ),
          ),
        ),
        ),
      );
  }
}

/*
*  */
