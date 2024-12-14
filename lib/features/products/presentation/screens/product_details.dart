import 'package:ecommerce/core/resources/assets_manager.dart';
import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:ecommerce/core/widgets/custom_elevated_button.dart';
import 'package:ecommerce/core/widgets/product_counter.dart';
import 'package:ecommerce/features/products/presentation/widgets/product_description.dart';
import 'package:ecommerce/features/products/presentation/widgets/product_image.dart';
import 'package:ecommerce/features/products/presentation/widgets/product_label.dart';
import 'package:ecommerce/features/products/presentation/widgets/product_rating.dart';
import 'package:ecommerce/features/products/presentation/widgets/product_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails();

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int _quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Product Details',
          style: getMediumStyle(color: ColorManager.appBarTitle)
              .copyWith(fontSize: 20.sp),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage(IconsAssets.search),
              color: ColorManager.primary,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              color: ColorManager.primary,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
            start: 16.w,
            end: 16.w,
            bottom: 50.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductSlider(
                items: [
                  'https://pl.kicksmaniac.com/zdjecia/2022/08/23/508/43/NIKE_AIR_JORDAN_1_RETRO_HIGH_GS_RARE_AIR_MAX_ORANGE-mini.jpg',
                  'https://pl.kicksmaniac.com/zdjecia/2022/08/23/508/43/NIKE_AIR_JORDAN_1_RETRO_HIGH_GS_RARE_AIR_MAX_ORANGE-mini.jpg',
                ]
                    .map(
                      (imageURL) => ProductImage(imageUrl: imageURL),
                    )
                    .toList(),
                initialIndex: 0,
              ),
              SizedBox(
                height: 24.h,
              ),
              const ProductLabel(
                name: 'Nike Air Jordon Nike shoes flexible for wo..',
                price: 'EGP 399',
              ),
              SizedBox(
                height: 16.h,
              ),
              Row(
                children: [
                  const Expanded(
                    child: ProductRating(
                      buyers: '1324',
                      rating: '4.8 (853)',
                    ),
                  ),
                  ProductCounter(
                    initialValue: _quantity,
                    onIncrement: (value) {
                      _quantity = value;
                    },
                    onDecrement: (value) {
                      _quantity = value;
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),
              const ProductDescription(
                description:
                    'Nike is a multinational corporation that designs, develops, and sells athletic footwear ,apparel, and accessories.',
              ),
              SizedBox(
                height: 48.h,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        'Total price',
                        style: getMediumStyle(
                          color: ColorManager.primary.withOpacity(.6),
                        ).copyWith(fontSize: 18.sp),
                      ),
                      SizedBox(
                        height: 12.h,
                      ),
                      Text(
                        'EGP 399',
                        style: getMediumStyle(
                          color: ColorManager.appBarTitle,
                        ).copyWith(fontSize: 18.sp),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 33.w,
                  ),
                  Expanded(
                    child: CustomElevatedButton(
                      label: 'Add to cart',
                      onTap: () {},
                      prefixIcon: const Icon(
                        Icons.add_shopping_cart_outlined,
                        color: ColorManager.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
