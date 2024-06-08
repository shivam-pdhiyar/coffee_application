import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'oderd-tab.dart';

class Detail_Items extends StatefulWidget {
  const Detail_Items({super.key});

  @override
  State<Detail_Items> createState() => _Detail_ItemsState();
}

class _Detail_ItemsState extends State<Detail_Items> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 90,
            ),
            Text(
              "Detail",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.favorite_border, size: 30, color: Colors.black),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                width: 350,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child:
                        Image.asset("assets/images/ccc.png", fit: BoxFit.cover)),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Cappucino",
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 25),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "with Chocolate",
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Color(0xFFFBBE21),
                    size: 30,
                  ),
                  Text(
                    "4.8",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    "(230)",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  Spacer(),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12),
                    child: Image.asset("assets/images/bean.png"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12),
                      child: Image.asset(
                        "assets/images/milk.png",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 370,
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "Description",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.black),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 25,
                ),
                Text(
                  "A cappuccino is an approximately 150 ml (5\n"
                  " oz) beverage, with 25 ml of espresso coffee",
                  style: TextStyle(fontSize: 12, color: Colors.black),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "and 85ml of fresh milk the for...",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontSize: 16, color: Colors.black),
                ),

              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Size",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Center(
                      child: Text(
                        "S",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        color: Color(0xFFFFF5EE),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Color(0xFFC67C4E), width: 1)),
                    child: Center(
                      child: Text(
                        "M",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 25),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 50,
                    width: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Center(
                      child: Text(
                        "L",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Text(
                      "Price",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    Text(
                      "\$ 4.53",
                      style: TextStyle(
                          color: Color(0xFFC67C4E),
                          fontSize: 20,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrderedTab(),
                        ),
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFC67C4E),
                      ),
                      child: Center(
                        child: Text(
                          "Buy Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
