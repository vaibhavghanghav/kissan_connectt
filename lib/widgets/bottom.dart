import 'package:flutter/material.dart';

class BottomW extends StatelessWidget {
  const BottomW({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, "/Home"); // Corrected route name
          },
          icon: Icon(Icons.home, size: 40),
        ),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/BookEquipment");
            },
            icon: Icon(Icons.agriculture_rounded, size: 40)),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/HireWorker");
            },
            icon: Icon(Icons.people_alt_rounded, size: 40)),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/store");
            },
            icon: Icon(Icons.shopping_bag, size: 40)),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, "/InsuranceLoanPage");
            },
            icon: Icon(Icons.account_balance_wallet, size: 40)),
      ],
    );
  }
}
