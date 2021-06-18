import 'package:flutter/material.dart';
import 'package:laundryapp/view/home/components/all_shops.dart';
import 'package:laundryapp/view/home/components/location_bar.dart';
import 'package:laundryapp/view/home/components/our_services.dart';
import 'package:laundryapp/view/home/components/promotion_slider.dart';

import 'components/popular_laundries.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 50),
            LocationHeader(),
            _vSizedBox(),
            _hText("Promotions"),
            PromotionSlider(),
            _vSizedBox(),
            _hText("Our Services"),
            ServiceHScroll(),
            _vSizedBox(),
            _hText("All Shops"),
            AllShopsV(),
            _vSizedBox(),
            _hText("Popular Laundries"),
            PopularLaundries(),
            _vSizedBox(),
          ],
        ),
      ),
    ));
  }
}

Widget _vSizedBox() {
  return SizedBox(
    height: 20,
  );
}

Widget _hText(String? heading) {
  return Padding(
    padding: const EdgeInsets.only(left: 25, bottom: 20),
    child: Text(
      '$heading',
      textAlign: TextAlign.left,
      style: TextStyle(
        color: Colors.grey[700],
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
