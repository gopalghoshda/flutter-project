import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Custom styled "Hello, World!" text
            Text(
              'Hello, World!',
              style: TextStyle(
                color: Colors.red, // Text color to red
                fontWeight: FontWeight.bold, // Make the text bold
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 10.0),
            // Additional "Welcome to Flutter!" text
            Text(
              'Welcome to Flutter!',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 20.0),
            // Optional Image
            Image.network(
              'https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
              width: 100,
              height: 100,
            ),
            SizedBox(height: 20.0),
            // Interactive button with Snackbar
            ElevatedButton(
              onPressed: () {
                // Show Snackbar when the button is pressed
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Button Pressed!'),
                  ),
                );
              },
              child: Text('Press Me'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green, // Change button color to green
              ),
            ),
          ],
        ),
      ),
    );
  }
}
