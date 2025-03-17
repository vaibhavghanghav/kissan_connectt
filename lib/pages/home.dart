import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kissan_connect/widgets/bottom.dart';

class Home extends StatelessWidget {
  Home({super.key});
  final List<Map<String, dynamic>> cropData = [
    {"crop": "Wheat", "price": 25.0, "growth": 5.2},
    {"crop": "Rice", "price": 30.5, "growth": 4.8},
    {"crop": "Corn", "price": 20.0, "growth": 6.1},
    {"crop": "Soybean", "price": 45.0, "growth": 3.9},
    {"crop": "Sugarcane", "price": 18.5, "growth": 7.3},
    {"crop": "Cotton", "price": 50.0, "growth": 2.5},
    {"crop": "Barley", "price": 22.0, "growth": 4.5},
    {"crop": "Tomato", "price": 15.0, "growth": 8.0},
    {"crop": "Potato", "price": 12.5, "growth": 5.7},
    {"crop": "Onion", "price": 28.0, "growth": 6.5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Text(
          "KisanConnect",
          style: TextStyle(
            color: Colors.green.shade900,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 12, 53, 15),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Welcome Back",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Vaibhav 🧑‍🌾",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "32°C",
                                  style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "Party Cloudy",
                                  style: TextStyle(
                                      fontSize: 24, color: Colors.white),
                                ),
                                Text(
                                  "Pune, Maharashtra",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.green.shade100),
                                ),
                                SizedBox(
                                  height: 10,
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
              // Container(
              //   decoration: BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.circular(20),
              //   ),
              //   width: double.infinity,
              //   height: 200,
              //   child: Padding(
              //     padding: const EdgeInsets.only(left: 10),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.end,
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           "32°C",
              //           style: TextStyle(
              //             fontSize: 40,
              //             fontWeight: FontWeight.bold,
              //           ),
              //         ),
              //         Text(
              //           "Party Cloudy",
              //           style: TextStyle(
              //             fontSize: 24,
              //           ),
              //         ),
              //         Text(
              //           "Pune, Maharashtra",
              //           style: TextStyle(
              //               fontSize: 16, color: Colors.grey.shade700),
              //         ),
              //         SizedBox(
              //           height: 10,
              //         ),
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Quick Actions",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 250,
                child: GridView(
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                  ),
                  children: [
                    myBox("Book Equipment",
                        "assets/images/equipment.png"), //equipments
                    myBox("Hire Workers",
                        "assets/images/hireworker.png"), //worker
                    myBox("Get Advice",
                        "assets/images/getadvice.png"), //Get Advice
                    myBox("Buy Supplies",
                        "assets/images/store.png"), //Buy Supplies store
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  "Today's Market Prices",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Row(
              //     spacing: 10,
              //     children: [
              //       Container(
              //         height: 150,
              //         width: 150,
              //         color: Colors.black,
              //       ),
              //       Container(
              //         height: 150,
              //         width: 150,
              //         color: Colors.black,
              //       ),
              //       Container(
              //         height: 150,
              //         width: 150,
              //         color: Colors.black,
              //       ),
              //     ],
              //   ),
              // )
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 100, // Fixed height for scrollable row
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: cropData.length,
                  itemBuilder: (context, index) {
                    final crop = cropData[index];
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      padding: const EdgeInsets.all(10),
                      width: 150,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 204, 223, 205),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            crop["crop"],
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "₹${crop["price"]}/kg",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.green.shade900,
                            ),
                          ),
                          Text(
                            "Growth: ${crop["growth"]}%",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //     children: [
      //       IconButton(
      //         onPressed: () {
      //           Navigator.pushNamed(context, "/Home");
      //         },
      //         icon: Icon(Icons.home, size: 40),
      //       ),
      //       IconButton(
      //           onPressed: () {
      //             Navigator.pushNamed(context, "/BookEquipment");
      //           },
      //           icon: Icon(Icons.agriculture_rounded, size: 40)),
      //       IconButton(onPressed: () {}, icon: FaIcon(FontAwesomeIcons.truck)),
      //       IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.people_alt_rounded, size: 40)),
      //       IconButton(
      //           onPressed: () {}, icon: Icon(Icons.shopping_bag, size: 40)),
      //       IconButton(
      //           onPressed: () {},
      //           icon: Icon(Icons.account_balance_wallet, size: 40)),
      //     ],
      //   ),
      // ),
      bottomNavigationBar: BottomAppBar(
        child: BottomW(),
      ),
    );
  }
}

Widget myBox(
  String service,
  String services,
) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(image: AssetImage("$services"), fit: BoxFit.fill),
    ),
    margin: EdgeInsets.all(8),
    alignment: Alignment.center,
    child: Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image.network("$imageurl"),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 8, 40, 10),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              service,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    ),
  );
}
