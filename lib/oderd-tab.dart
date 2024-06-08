import 'package:flutter/material.dart';
import 'delivery_tab.dart';

class OrderedTab extends StatefulWidget {
  const OrderedTab({super.key});

  @override
  State<OrderedTab> createState() => _OrderedTabState();
}

class _OrderedTabState extends State<OrderedTab> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Order",
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black12),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 40,
                          width: 170,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xFFC67C4E)),
                          child: const Center(
                            child: Text(
                              "Deliver",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 50,
                        ),
                        const Text(
                          "Pick UP",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "Delivery Address",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          "Jl. Kpg Sutoyo",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child:
                            Text("Kpg. Sutoyo No. 620, Bilzen, Tanjungbalai."),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(Icons.edit_note),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Edit Address"),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 120,
                          height: 30,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10),
                                child: Icon(Icons.notes),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text("Edit Note"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 350,
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16),
                        child: Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.black),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              "assets/images/Rectangle 1706.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Column(
                          children: [
                            Text(
                              "Cappuccino",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.black),
                            ),
                            Text(
                              "with Chocolate",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: FloatingActionButton(
                          backgroundColor: Colors.transparent,
                          onPressed: () {
                            counter--;

                            setState(
                              () {},
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Icon(Icons.minimize, color: Colors.black),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text("$counter",
                          style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Colors.black)),
                      const SizedBox(
                        width: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border.all(width: 1, color: Colors.grey)),
                          child: FloatingActionButton(
                            onPressed: incrementCounter,
                            backgroundColor: Colors.transparent,
                            tooltip: "Increment",
                            child: const Icon(Icons.add),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    width: 320,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/Discount.png",
                            height: 35,
                            width: 35,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          const Text(
                            "1 Discount is applied",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                          const Spacer(),
                          const Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        "Payment Summary",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        "Price",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Text(
                          "\$ 4.53",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        "Price",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Text(
                          "\$ 2.0",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Text(
                          "\$ 1.0",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 350,
                    height: 1,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    children: [
                      SizedBox(
                        width: 45,
                      ),
                      Text(
                        "Total Payment",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.black),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Text(
                          "\$ 5.53",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.monetization_on,
                          color: Color(0xFFC67C4E),
                          size: 30,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 150,
                          height: 35,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                width: 70,
                                height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: const Color(0xFFC67C4E)),
                                child: const Center(
                                  child: Text(
                                    "Cash",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "\$ 5.53",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 16),
                          child: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.black38),
                            child: const Icon(
                              Icons.more_horiz,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DeliveryTab(),
                        ),
                      );
                    },
                    child: Container(
                      height: 70,
                      width: 300,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFFC67C4E)),
                      child: const Center(
                        child: Text(
                          "Order",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),



          ],
        ),
      ),
    );
  }
}
