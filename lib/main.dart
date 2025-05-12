import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'dogs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'CustomFont',
      ),
      home: const ImagesScreen(),
    );
  }
}

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'kt 3',
          style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'I really love dogs',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 20),

          const Text(
            'They are so cute!!! Just look at them' ,
            style: TextStyle(
              fontSize: 30, 
              fontWeight: FontWeight.bold, 
            ),
          ),
          
          SizedBox(
            height: 300,
            child: Image.asset(
              'assets/images/image1.jpg',
              fit: BoxFit.contain, 
            ),
          ),
          const SizedBox(height: 20),

          SizedBox(
            height: 300,
            child: Image.asset(
              'assets/images/image2.jpg',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: Image.asset(
              'assets/images/image3.jpg',
               fit: BoxFit.contain,
            ),
          ),

        ],
      ),
    );
  }
}
