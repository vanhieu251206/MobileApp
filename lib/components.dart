import 'package:flutter/material.dart';
import 'TextDetailScreen.dart';

class ComponentsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'UI Components List',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          // --- Display Group ---
          Text(
            'Display',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          // Text item có onTap chuyển màn hình
          componentItem(
            'Text',
            'Displays text',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TextDetailScreen()),
              );
            },
          ),
          componentItem('Image', 'Displays an image'),
          SizedBox(height: 16),

          // --- Input Group ---
          Text(
            'Input',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          componentItem('TextField', 'Input field for text'),
          componentItem('PasswordField', 'Input field for passwords'),
          SizedBox(height: 16),

          // --- Layout Group ---
          Text(
            'Layout',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          componentItem('Column', 'Arranges elements vertically'),
          componentItem('Row', 'Arranges elements horizontally'),
        ],
      ),
    );
  }

  // Widget cho từng component
  Widget componentItem(String title, String description, {VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.cyanAccent,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 4),
            Text(
              description,
              style: TextStyle(fontSize: 13),
            ),
          ],
        ),
      ),
    );
  }
}
