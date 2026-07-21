import 'package:flutter/material.dart';
import 'package:store_app/views/home_view.dart';

void main() {
  runApp(const StoreApp());
}

class StoreApp extends StatelessWidget {
  const StoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.id,
      routes: {HomeView.id: (context) => HomeView()},
      home: const HomeView(),
    );
  }
}
