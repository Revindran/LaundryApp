import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundryapp/controllers/home_view_controller.dart';
import 'package:laundryapp/model/promotion.dart';

class PromotionSlider extends StatelessWidget {
  final HomeViewController _controller = Get.find<HomeViewController>();

  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: _controller.offers.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) {
        final offers = _controller.offers[itemIndex];
        return Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15), color: Colors.white),
          child: Center(
            child: offersList(offers),
          ),
        );
      },
      options: CarouselOptions(
        height: 180.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}

Widget offersList(OffersList offers) {
  return Container(
    width: Get.width,
    child: Stack(
      children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            child: Image(
                image: NetworkImage(
                    "https://images.vexels.com/media/users/3/213440/isolated/preview/040949f1471f3cc09a1f96ecf442f529-shirt-on-hanger-by-vexels.png")),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                offers.title1!,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                offers.title2!,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Text(
                'Discount ${offers.discount!}%',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
