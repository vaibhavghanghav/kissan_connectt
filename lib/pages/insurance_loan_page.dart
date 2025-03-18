import 'package:flutter/material.dart';
import 'package:kissan_connect/widgets/bottom.dart';

class InsuranceLoanPage extends StatelessWidget {
  const InsuranceLoanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Insurance & Loans",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Insurance Section
            SectionHeader(title: "Protect Your Farm with Insurance"),
            InsuranceOption(title: "Crop Insurance", icon: Icons.eco),
            InsuranceOption(title: "Livestock Insurance", icon: Icons.pets),
            InsuranceOption(
                title: "Equipment Insurance", icon: Icons.agriculture),

            // Loan Section
            SectionHeader(title: "Secure a Loan for Your Farming Needs"),
            LoanOption(
                title: "Agricultural Equipment Loan", icon: Icons.handyman),
            LoanOption(title: "Crop Loan", icon: Icons.grass),
            LoanOption(
                title: "Personal Loan for Farmers",
                icon: Icons.account_balance),

            // Government Schemes Section
            SectionHeader(title: "Government Schemes for Farmers"),
            SchemeOption(
                title: "PM Kisan Yojana",
                description: "Direct financial support to farmers"),
            SchemeOption(
                title: "Kisan Credit Card",
                description: "Easy loans at low interest rates"),
            SchemeOption(
                title: "Soil Health Card Scheme",
                description: "Improve soil fertility & productivity"),
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

// Reusable Section Header Widget
class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 12.0),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.bold, color: Colors.green),
      ),
    );
  }
}

// Insurance Option Widget
class InsuranceOption extends StatelessWidget {
  final String title;
  final IconData icon;
  const InsuranceOption({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.green),
      title: Text(title, style: TextStyle(fontSize: 16)),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}

// Loan Option Widget
class LoanOption extends StatelessWidget {
  final String title;
  final IconData icon;
  const LoanOption({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.blue),
      title: Text(title, style: TextStyle(fontSize: 16)),
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}

// Government Scheme Option Widget
class SchemeOption extends StatelessWidget {
  final String title;
  final String description;
  const SchemeOption({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: Icon(Icons.info_outline, color: Colors.green),
        onTap: () {},
      ),
    );
  }
}
