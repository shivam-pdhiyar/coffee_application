import 'package:flutter/material.dart';

class DeliveryTab extends StatefulWidget {
  const DeliveryTab({super.key});

  @override
  State<DeliveryTab> createState() => _DeliveryTabState();
}

class _DeliveryTabState extends State<DeliveryTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Image.asset("assets/images/Delivery.png",fit: BoxFit.cover),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 25),
                  child: InkWell(onTap: () {
                    Navigator.pop(context);
                  },
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Icon(Icons.arrow_back_ios),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 330, top: 25),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child:
                        const Center(child: Icon(Icons.location_searching_outlined)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,

        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(

            bottomRight: Radius.circular(20),
            bottomLeft: Radius.circular(20),
          ),

        ),
        child: Column(
          children: [
            const Text(
              "10 min left",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
            const Row(
              children: [
                SizedBox(
                  width: 110,
                ),
                Text(
                  "Delivery to ",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ),
                Text(
                  "Jl. Kpg Sutoyo",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 80,
                    height: 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 80,
                    height: 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 80,
                    height: 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.green),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Container(
                    width: 80,
                    height: 6,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: const Icon(Icons.delivery_dining,
                        color: Color(0xFFC67C4E), size: 50),
                  ),
                  const Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Delivered your order",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                            fontSize: 20),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "We deliver your goods to you in \n"
                          "the shortes possible time.",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 30,
                ),
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),
                  child: Image.asset("assets/images/Image (1).png"),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 25),
                      child: Text(
                        "Johan Hawn",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(
                      "Personal Courier",
                      style: TextStyle(color: Colors.grey, fontSize: 18),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 25),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Colors.grey),
                    ),
                    child: const Icon(Icons.call, color: Colors.grey, size: 30),
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
