import 'package:flutter/material.dart';

class ExpenseTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracking'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Expense Name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Category'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Date'),
              onTap: () {
                // Implement date picker functionality here
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Implement expense submission logic here
              },
              child: Text('Add Expense'),
            ),
          ],
        ),
      ),
    );
  }
}
