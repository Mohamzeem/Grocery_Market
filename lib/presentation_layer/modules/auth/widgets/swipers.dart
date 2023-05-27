import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import '../../../../helper/app_lists.dart';

class SwipersWidget extends StatelessWidget {
  const SwipersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Swiper(
        duration: 1000,
        autoplayDelay: 3000,
        autoplay: true,
        itemCount: AppLists.swiperImages.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            AppLists.swiperImages[index],
            fit: BoxFit.cover,
          );
        });
  }
}
