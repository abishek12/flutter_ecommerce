import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/custom/utils/dot_decorator.dart';
import 'package:flutter_ecommerce/home/utils/carousel_list.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.35,
            child: CarouselSlider.builder(
              itemCount: homeCarouselList.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    "assets/carousel/${homeCarouselList[itemIndex]}.jpeg",
                    fit: BoxFit.cover,
                  ),
                );
              },
              options: CarouselOptions(
                autoPlay: false,
                enlargeCenterPage: true,
                viewportFraction: 1,
                aspectRatio: 2.0,
                initialPage: 0,
              ),
            ),
          ),
        ),
        CustomDotDecorator(value: homeCarouselList.length),
      ],
    );
  }
}
