import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:ecommerce/core/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductSlider extends StatefulWidget {
  final List<Widget> items;
  final int initialIndex;

  const ProductSlider({
    required this.items,
    required this.initialIndex,
  });

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  final CarouselSliderController _controller = CarouselSliderController();
  late int _currentIndex = widget.initialIndex;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          controller: _controller,
          items: widget.items,
          options: CarouselOptions(
            aspectRatio: 199.w / 150.h,
            initialPage: widget.initialIndex,
            enlargeCenterPage: true,
            viewportFraction: 1,
            onPageChanged: (index, _) => setState(() => _currentIndex = index),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 8.h),
          child: AnimatedSmoothIndicator(
            activeIndex: _currentIndex,
            count: widget.items.length,
            duration: const Duration(microseconds: 0),
            effect: ExpandingDotsEffect(
              dotWidth: 7.w,
              dotHeight: 7.h,
              dotColor: Colors.grey.shade400,
              paintStyle: PaintingStyle.fill,
              activeDotColor: ColorManager.primary,
            ),
          ),
        ),
      ],
    );
  }
}