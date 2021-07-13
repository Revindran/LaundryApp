import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:laundryapp/controllers/home_view_controller.dart';

class AllShopsV extends StatelessWidget {
  final HomeViewController _controller = Get.find<HomeViewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: allShops(),
    );
  }

  Widget allShops() {
    return Obx(
      () => ListView.builder(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: _controller.shopList.length,
        itemBuilder: (context, index) {
          final shops = _controller.shopList[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      child: Image(
                          image: NetworkImage(
                              "https://images.vexels.com/media/users/3/213440/isolated/preview/040949f1471f3cc09a1f96ecf442f529-shirt-on-hanger-by-vexels.png")),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shops.name!,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          )),
                      Container(
                        width: 180,
                        child: Text('${shops.address}, ${shops.city}',
                            overflow: TextOverflow.ellipsis,
                            softWrap: true,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                fontStyle: FontStyle.italic)),
                      ),
                      Row(
                        children: [
                          RatingBar.builder(
                            initialRating: double.parse("${shops.rate}"),
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 20.0,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Text(shops.rate == "0" ? "(0)" : "(${shops.rate})")
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      child: shops.isSameday == 0
                          ? null
                          : Image(
                              image: AssetImage("assets/fast_delivery.png"),
                              color: Color.fromRGBO(255, 255, 255, 0.1),
                              colorBlendMode: BlendMode.modulate),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
