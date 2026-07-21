import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_elevated_button.dart';
import 'package:store_app/widgets/custom_text_form_field.dart';

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
          onPressed: () => Navigator.pop(context),
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextFormField(hintText: 'Product Name'),
            SizedBox(height: 10),
            CustomTextFormField(hintText: 'Description'),
            SizedBox(height: 10),
            CustomTextFormField(hintText: 'Price'),
            SizedBox(height: 10),
            CustomTextFormField(hintText: 'Image'),
            SizedBox(height: 50),
            CustomElevatedButton(label: 'Update', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
