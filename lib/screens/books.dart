import 'package:flutter/material.dart';

class Book extends StatefulWidget {
  const Book({super.key});

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Screen'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Welcome to the Books sceen'),
      )
    );
  }
}