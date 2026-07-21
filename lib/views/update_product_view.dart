import 'package:flutter/material.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product_service.dart';
import 'package:store_app/widgets/custom_elevated_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';

class UpdateProductView extends StatefulWidget {
  const UpdateProductView({super.key});
  static String id = 'updateProductView';

  @override
  State<UpdateProductView> createState() => _UpdateProductViewState();
}

class _UpdateProductViewState extends State<UpdateProductView> {
  String? productName, productDescription, image;
  String? price;
  @override
  Widget build(BuildContext context) {
    ProductModel productModel = ModalRoute.of(context)!.settings.arguments as ProductModel;
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 100),
              CustomTextField(
                hintText: 'Product Name',
                onChanged: (data) {
                  productName = data;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                hintText: 'Description',
                onChanged: (data) {
                  productDescription = data;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                hintText: 'Price',
                inputType: TextInputType.number,
                onChanged: (data) {
                  price = data;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                hintText: 'Image',
                onChanged: (data) {
                  image = data;
                },
              ),
              SizedBox(height: 50),
              CustomElevatedButton(
                label: 'Update',
                onPressed: () {
                  UpdateProductService().updateProduct(
                    title: productName!,
                    description: productDescription!,
                    price: price.toString(),
                    image: image,
                    category: productModel.category,
                    id: productModel.id,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
