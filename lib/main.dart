import 'package:finance_manager_app/core.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Finance Manager',
navigatorKey: Get.navigatorKey,
      theme: ThemeData(
        primarySwatch: Colors.blue, // Set your preferred primary color
      ),
      home:
          DashboardScreen(), // Set the initial screen (Dashboard in this example)
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Your Finance Manager!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Expense Tracking screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExpenseTrackingScreen()),
                );
              },
              child: Text('Expense Tracking'),
            ),
            ElevatedButton(
              onPressed: () {
                // Navigate to the Income Tracking screen
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => IncomeTrackingScreen()),
                );
              },
              child: Text('Income Tracking'),
            ),
            // Add buttons for other screens as needed
          ],
        ),
      ),
    );
  }
}

class ExpenseTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracking'),
      ),
      // Build the UI for the Expense Tracking screen here
    );
  }
}

class 

IncomeTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Income Tracking'),
      ),
      // Build the UI for the Income Tracking screen here
    );
  }
}

void openExpenseTracking(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ExpenseTrackingScreen()),
  );
}

void openIncomeTracking(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => IncomeTrackingScreen()),
  );
}
