import 'package:flutter/material.dart';

class IncomeTrackingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Income Tracking'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Income Source'),
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
                // Implement income submission logic here
              },
              child: Text('Add Income'),
            ),
          ],
        ),
      ),
    );
  }
}
