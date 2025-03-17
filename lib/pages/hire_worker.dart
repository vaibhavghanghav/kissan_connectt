import 'package:flutter/material.dart';
import 'package:kissan_connect/widgets/app_bar.dart';
import 'package:kissan_connect/widgets/bottom.dart';

class HireWorker extends StatelessWidget {
  HireWorker({super.key});
  final List<String> agriculturalCategories = [
    "Farm Laborers",
    "Harvesting Workers",
    "Irrigation Experts",
    "Plantation Workers"
  ];

  final List<IconData> categoryIcons = [
    Icons.agriculture, // Farm Laborers
    Icons.grass, // Harvesting & Plantation Workers
    Icons.water_drop, // Irrigation Experts
    Icons.nature,
  ];

  final List<Map<String, dynamic>> laborList = [
    {
      "name": "Ramesh Kumar",
      "location": "Madhapur, Hyderabad",
      "price": "₹1000.00",
      "image": "assets/images/labours/far1.jpeg",
      "job": "General Farm Laborer"
    },
    {
      "name": "Suresh Yadav",
      "location": "Karjat, Maharashtra",
      "price": "₹1200.00",
      "image": "assets/images/labours/far2.jpeg",
      "job": "Skilled Agricultural Worker"
    },
    {
      "name": "Anil Verma",
      "location": "Rampur, Uttar Pradesh",
      "price": "₹1100.00",
      "image": "assets/images/labours/far3.jpeg",
      "job": "Housekeeping & Dairy Worker"
    },
    {
      "name": "Mahesh Patil",
      "location": "Hosur, Tamil Nadu",
      "price": "₹1300.00",
      "image": "assets/images/labours/far4.jpeg",
      "job": "Poultry & Hatchery Expert"
    },
    {
      "name": "Vikram Singh",
      "location": "Jaipur, Rajasthan",
      "price": "₹1400.00",
      "image": "assets/images/labours/far5.jpeg",
      "job": "Irrigation & Water Management"
    },
    {
      "name": "Ramesh Kumar",
      "location": "Madhapur, Hyderabad",
      "price": "₹1000.00",
      "image": "assets/images/labours/far1.jpeg",
      "job": "General Farm Laborer"
    },
    {
      "name": "Suresh Yadav",
      "location": "Karjat, Maharashtra",
      "price": "₹1200.00",
      "image": "assets/images/labours/far2.jpeg",
      "job": "Skilled Agricultural Worker"
    },
    {
      "name": "Anil Verma",
      "location": "Rampur, Uttar Pradesh",
      "price": "₹1100.00",
      "image": "assets/images/labours/far3.jpeg",
      "job": "Housekeeping & Dairy Worker"
    },
    {
      "name": "Mahesh Patil",
      "location": "Hosur, Tamil Nadu",
      "price": "₹1300.00",
      "image": "assets/images/labours/far4.jpeg",
      "job": "Poultry & Hatchery Expert"
    },
    {
      "name": "Vikram Singh",
      "location": "Jaipur, Rajasthan",
      "price": "₹1400.00",
      "image": "assets/images/labours/far5.jpeg",
      "job": "Irrigation & Water Management"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: MyAppBar(myText: "Hire Worker"),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchBar(
              surfaceTintColor:
                  MaterialStateProperty.all<Color>(Colors.transparent),
              shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
              leading: Icon(Icons.search),
              hintText: 'Search labor',
            ),
            SizedBox(height: 10),
            Text(
              "Category",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100, // Adjust height for scrolling
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: agriculturalCategories.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.green.shade100,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(categoryIcons[index],
                            size: 40, color: Colors.green.shade700),
                        SizedBox(height: 8),
                        Text(
                          agriculturalCategories[index],
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Helpers",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: laborList.length,
                itemBuilder: (context, index) {
                  final labor = laborList[index];
                  return Container(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 5,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Image.asset(labor["image"], width: 50, height: 50),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                labor["name"],
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                labor["location"],
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          labor["price"],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.green),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: BottomW(),
      ),
    );
  }
}
