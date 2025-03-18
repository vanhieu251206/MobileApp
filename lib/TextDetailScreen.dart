import 'package:flutter/material.dart';

class TextDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Text Detail',
          style: TextStyle(
            color: Colors.cyan,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.cyan),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Align(
          alignment: Alignment.topLeft,
          child: RichText(
            text: TextSpan(
              style: TextStyle(fontSize: 24, color: Colors.black, height: 1.5),
              children: [
                TextSpan(text: 'The '),
                TextSpan(
                  text: 'quick',
                  style: TextStyle(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                TextSpan(text: ' '),
                TextSpan(
                  text: 'Brown',
                  style: TextStyle(color: Colors.orange, fontSize: 28),
                ),
                TextSpan(text: '\n'),
                TextSpan(text: 'fox j u m p s '),
                TextSpan(
                  text: 'over',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: '\n'),
                TextSpan(
                  text: 'the ',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
                TextSpan(
                  text: 'lazy',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                TextSpan(text: ' dog.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
