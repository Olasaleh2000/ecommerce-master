import 'package:cached_network_image/cached_network_image.dart';
import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:ecommerce/core/resources/styles_manager.dart';
import 'package:ecommerce/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(
        Routes.products,
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100.r),
            child: Container(
              height: 100.h,
              width: 100.w,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: CachedNetworkImage(
                imageUrl:
                    'https://helios-i.mashable.com/imagery/articles/05djrP5PjtVB7CcMtvrTOAP/images-4.fill.size_2000x1125.v1723100793.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Laptops',
            style:
                getRegularStyle(color: ColorManager.darkBlue, fontSize: 14.sp),
          ),
        ],
      ),
    );
  }
}
