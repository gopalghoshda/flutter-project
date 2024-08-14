import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TextStylingScreen(),
    );
  }
}

class TextStylingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Styling in Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Title Text
            Text(
              'Flutter Text Styling',
              style: TextStyle(
                fontSize: 24, // Larger font size
                fontWeight: FontWeight.bold, // Bold font weight
              ),
            ),
            SizedBox(height: 10), // Space between title and subtitle
            // Subtitle Text
            Text(
              'Experiment with text styles',
              style: TextStyle(
                fontSize: 18, // Smaller font size
                fontStyle: FontStyle.italic, // Italic font style
              ),
            ),
            SizedBox(height: 20), // Space between subtitle and button
            // Text Button
            TextButton(
              onPressed: () {
                // Show a Snackbar on button press
                final snackBar = SnackBar(
                  content: Text('You clicked the button!'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: Text(
                'Click Me!',
                style: TextStyle(
                  fontSize: 20, // Larger font size for the button text
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
