import 'package:flutter/material.dart';
import 'package:kissan_connect/widgets/bottom.dart';

class StoreMain extends StatelessWidget {
  StoreMain({super.key});

  final List<Map<String, String>> categories = [
    {'name': 'Fertilizers', 'icon': '🧪'},
    {'name': 'Irrigators', 'icon': '💧'},
    {'name': 'Mixing Tools', 'icon': '🔄'},
    {'name': 'Drip Kits', 'icon': '🚰'},
    {'name': 'Seeds', 'icon': '🌱'},
  ];

  final List<Map<String, String>> products = [
    {
      'name': 'Animal Food & Nutrition',
      'price': '\₹1010',
      'image':
          'https://th.bing.com/th/id/OIP.Prr3faL3VV4IbQ_ov8fhIAHaHa?rs=1&pid=ImgDetMain'
    },
    {
      'name': 'Pesticides & Greenhouse',
      'price': '\₹1330',
      'image':
          'https://th.bing.com/th/id/OIP.XWfKEIazeOiTsnXPEzUHDQHaLG?rs=1&pid=ImgDetMain'
    },
    {
      'name': 'Irrigation Setups',
      'price': '\₹32000',
      'image':
          'https://th.bing.com/th/id/OIP.0xmVwLPqbGZq8N4NHS1eSwHaHJ?rs=1&pid=ImgDetMain'
    },
    {
      'name': 'Soil Moisture Kits',
      'price': '\₹2000',
      'image':
          'https://th.bing.com/th/id/OIP.WM1NbwDSj98qYjfAO5BxlwHaHa?rs=1&pid=ImgDetMain'
    },
    {
      'name': 'Organic Fertilizer',
      'price': '₹850',
      'image':
          'https://th.bing.com/th/id/OIP.NYjRIzwp_PV8xkjQ_w9r2wHaJw?rs=1&pid=ImgDetMain'
    },
    {
      'name': 'Tractor Attachments',
      'price': '₹15000',
      'image':
          'https://omagroindia.com/wp-content/uploads/2019/03/tractor-attachments-1587809404-5392403.jpg'
    },
    {
      'name': 'Solar Water Pump',
      'price': '₹55000',
      'image':
          'https://149356857.v2.pressablecdn.com/wp-content/uploads/2018/04/Solar-Bunch.jpg'
    },
    {
      'name': 'Weather Monitoring Device',
      'price': '₹7200',
      'image':
          'https://i5.walmartimages.com/asr/d798a73d-20bb-4289-bf02-8b75d230ede8.40f74497c164e1eb8a6f413e70e0cce1.jpeg'
    },
    {
      'name': 'Chemical Spray Pump',
      'price': '₹4500',
      'image':
          'https://th.bing.com/th/id/OIP.9Hq8_RB4OnbcSM1XNaHCnAHaHa?rs=1&pid=ImgDetMain'
    },
    {
      'name': 'Milk Can 40 Ltr',
      'price': '₹2000',
      'image':
          'https://th.bing.com/th/id/OIP.yUBB9YlRs_Jv_SEpg2zHOwHaHa?rs=1&pid=ImgDetMain'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agriculture Store', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.green),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.green),
                hintText: 'Search products...',
                filled: true,
                fillColor: Colors.grey[200],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text('Categories',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            SizedBox(
              height: 90,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: categories.map((category) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.green[100],
                          child: Text(category['icon']!,
                              style: TextStyle(fontSize: 24)),
                        ),
                        SizedBox(height: 4),
                        Text(category['name']!, style: TextStyle(fontSize: 12))
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(products[index]['image']!),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(10)),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(products[index]['name']!,
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                              SizedBox(height: 4),
                              Text(products[index]['price']!,
                                  style: TextStyle(color: Colors.green)),
                            ],
                          ),
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
