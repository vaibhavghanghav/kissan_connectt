import 'package:flutter/material.dart';
import 'package:kissan_connect/widgets/bottom.dart';

class BookEquipment extends StatelessWidget {
  BookEquipment({super.key});

  final List<Map<String, String>> equipmentList = [
    {
      "name": "Tractor",
      "image":
          "https://www.pngkit.com/png/detail/64-640970_john-deere-tractors-india.png",
    },
    {
      "name": "Transportation",
      "image":
          "https://cvimg1.cardekho.com/p/630x420/in/mahindra/bolero-pikup-extralong-bs6/mahindra-bolero-pikup-extralong-bs6-72354.jpg",
    },
    {
      "name": "Drone",
      "image":
          "https://afdj.com.au/wp-content/uploads/2023/01/2-DJI-AGRAS-T40-DJI_0453-2-web.jpg",
    },
    {
      "name": "Harvester",
      "image":
          "https://img1.exportersindia.com/product_images/bc-full/2018/11/2997072/self-propelled-combine-harvester-malkit-897-1542603239-1163776.jpeg",
    },
    {
      "name": "Seeder",
      "image":
          "https://5.imimg.com/data5/YB/UO/RT/SELLER-26267068/punni-super-seeder.jpg",
    },
    // {
    //   "name": "Irrigation System",
    //   "image": "https://example.com/images/irrigation.png",
    // },
    // {
    //   "name": "Sprayer",
    //   "image": "https://example.com/images/sprayer.png",
    // },
    {
      "name": "Tiller",
      "image":
          "https://www.farm-king.com/img/gallery/tillage/lr/gallery_tillage_vt_lr_03.jpg",
    },
    {
      "name": "Baler",
      "image":
          "https://cdn.agriland.ie/uploads/2017/08/New-John-Deere-V461M-round-baler-B.jpg",
    },
    {
      "name": "Cultivator",
      "image":
          "https://cdn.britannica.com/84/73384-050-6DFF3413/crop-cultivator.jpg",
    },
    {
      "name": "Fertilizer Spreader",
      "image":
          "https://www.patelagroindustries.com/public/images/blog/ppfc9B4DuBS6nlCWvRHpA33Rt0E9DjCzO9OzJ6yl.jpg",
    },
    {
      "name": "Precision Planters ",
      "image":
          "https://miro.medium.com/v2/resize:fit:1100/format:webp/0*-jDSF-xWjpQ9-Tg5.png",
    },
    {
      "name": "Automated Harvesters",
      "image":
          "https://miro.medium.com/v2/resize:fit:1100/format:webp/0*kfiqSMuTe3m8YsRG.png",
    },
    {
      "name": "Smart Irrigation",
      "image":
          "https://miro.medium.com/v2/resize:fit:1100/format:webp/0*utLq6w0jCvowiobJ.png",
    },
    {
      "name": "Fertilizer Spreaders",
      "image":
          "https://miro.medium.com/v2/resize:fit:1100/format:webp/0*EXMuUIiz5uW3phGj.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Book Equipment"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SearchBar(
              leading: Icon(Icons.search),
              hintText: "Search...",
            ),
            SizedBox(height: 10),
            Card(
              child: SizedBox(
                height: 175,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/headbe.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items per row
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.0,
                ),
                itemCount: equipmentList.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      // Background Image
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(equipmentList[index]["image"]!),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // Gradient Overlay
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.7),
                              Colors.transparent,
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                      ),
                      // Category Name at Bottom
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.6),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Text(
                            equipmentList[index]["name"]!,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: BottomW(),
      ),
    );
  }
}
