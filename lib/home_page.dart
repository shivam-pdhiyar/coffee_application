import 'package:flutter/material.dart';
import 'detail_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchController = TextEditingController();

  List coffeeList = [
    {
      "pik": "assets/images/Rectangle 1706.png",
      "name": "Cappuccino",
      "text": "with Chocolate",
      "price": "\$ 4.53"
    },
    {
      "pik": "assets/images/Rectangle 1707.png",
      "name": "Cappuccino",
      "text": "with Out Milk",
      "price": "\$ 3.90"
    },
    {
      "pik": "assets/images/Rectangle 1708.png",
      "name": "Cappuccino",
      "text": "with Chocolate",
      "price": "\$ 4.53"
    },
    {
      "pik": "assets/images/Rectangle 1709.png",
      "name": "Cappuccino",
      "text": "with Out Milk",
      "price": "\$ 3.90"
    },
  ];

  List name = [
    {"name": "Cappuccino"},
    {"name": "Machito"},
    {"name": "Latte"},
    {"name": "Americano"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 350,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF131313),
                        Color(0xFF131313),
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: [
                          const Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(right: 120),
                                child: Text(
                                  "Location",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 20),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 10),
                                    child: Text(
                                      "Bilzen, Tanjungbalai",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 20),
                                    ),
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_down_outlined,
                                    color: Colors.white,
                                    size: 30,
                                  )
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 16),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                              ),
                              child: Image.asset("assets/images/women.png"),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width / 1.2,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                            ),
                            child: TextFormField(
                              controller: searchController,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search),
                                hintText: "search",
                                fillColor: Color(0xFF313131),
                                hintStyle: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Image.asset(
                              "assets/images/Frame 4.png",
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 250, left: 40),
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.200,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/images/image 8.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 260, left: 50),
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: Center(
                          child: Text(
                            "Promo",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 330, left: 50),
                      child: Container(
                        height: 50,
                        width: 180,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            "Buy one get",
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 390, left: 50),
                      child: Container(
                        height: 50,
                        width: 150,
                        color: Colors.black,
                        child: Center(
                          child: Text(
                            "one FREE",
                            style: TextStyle(
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 100,
              child: ListView.builder(
                itemCount: name.length,
                physics: ScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (ctx, i) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 16, top: 20),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFC67C4E),
                            ),
                            child: Center(
                              child: Text("${name[i]["name"]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Colors.white)),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              padding: EdgeInsets.all(16.0),
              itemCount: coffeeList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 270),
              itemBuilder: (ctx, i) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 180,
                                height: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.asset("${coffeeList[i]["pik"]}",
                                      fit: BoxFit.cover),
                                ),
                              ),
                              Container(
                                width: 70,
                                height: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    color: Colors.white30),
                                child: Row(
                                  children: [
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(Icons.star, color: Colors.yellow),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      "4.3",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 18),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "${coffeeList[i]["name"]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5),
                                child: Text(
                                  "${coffeeList[i]["text"]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 0),
                                child: Text(
                                  "${coffeeList[i]["price"]}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xFF2F4B4E),
                                      fontSize: 16),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.only(right: 5),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Detail_Items(),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Color(0xFFC67C4E),
                                    ),
                                    child: Icon(Icons.add, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
