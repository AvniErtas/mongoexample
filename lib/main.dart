import 'package:flutter/material.dart';
import 'package:mongodbexample/dbHelper/show.dart';
import 'package:mongodbexample/mongodb.dart';

// https://www.youtube.com/watch?v=yJtfID3iS0g&list=PL6KvyFEnJSRYjyZi7xOh3v_pc0-Q7jmuA&index=3
 // //
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await MongoDatabase.connect();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MongoDbInsert(),
    );
  }
}