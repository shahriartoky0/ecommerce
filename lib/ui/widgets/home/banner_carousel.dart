import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/ui/utility/app_colors.dart';
import 'package:flutter/material.dart';

class BannerCarousel extends StatefulWidget {
  const BannerCarousel({
    super.key,
    this.height,
  });

  final double? height;

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              height: widget.height ?? 150.0,
              onPageChanged: (index, reason) {
                _currentIndex.value = index;
              }),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 1.0),
                    decoration: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'text $i',
                      style: TextStyle(fontSize: 16.0),
                    ));
              },
            );
          }).toList(),
        ),
          SizedBox(height: 6),

          ValueListenableBuilder(
            valueListenable: _currentIndex,
            builder: (context, index , _ ) {
              return Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 5; i++)
                  Container(
                    height: 14,
                    width: 14,
                    margin: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: i == index
                            ? AppColors.primaryColor
                            : Colors.white,
                        border: Border.all(
                            color: i == index
                                ? AppColors.primaryColor
                                : Colors.grey),
                        borderRadius: BorderRadius.circular(12)),
                  ),
                ],
              );
            }
          )
      ],
    );
  }
}
