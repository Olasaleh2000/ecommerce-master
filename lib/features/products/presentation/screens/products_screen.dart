import 'package:ecommerce/core/resources/values_manager.dart';
import 'package:ecommerce/core/widgets/home_screen_app_bar.dart';
import 'package:ecommerce/features/products/presentation/widgets/product_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen();

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HomeScreenAppBar(
        automaticallyImplyLeading: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 7 / 9,
        ),
        itemBuilder: (_, index) => const ProductItem(),
        itemCount: 20,
        padding: EdgeInsets.all(Insets.s16.sp),
      ),
    );
  }
}
