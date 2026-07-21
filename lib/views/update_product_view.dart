import 'package:flutter/material.dart';

class UpdateProductView extends StatelessWidget {
  const UpdateProductView({super.key});
  static String id = 'updateProductView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Update Product', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Center(child: Text('Update Product View')),
    );
  }
}
