import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../../helper/app_lists.dart';

class OffersList extends StatelessWidget {
  const OffersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: AppLists.offerImages.length,
      itemBuilder: (context, index, realIndex) => Image.asset(
        AppLists.offerImages[index],
        fit: BoxFit.cover,
      ),
      options: CarouselOptions(
        height: MediaQuery.of(context).size.height * 0.28,
        aspectRatio: 16 / 9,
        viewportFraction: 0.8,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
