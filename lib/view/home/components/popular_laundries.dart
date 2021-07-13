import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:laundryapp/controllers/home_view_controller.dart';

class PopularLaundries extends StatelessWidget {
  final HomeViewController _controller = Get.find<HomeViewController>();

  @override
  Widget build(BuildContext context) {
    return popularShops();
  }

  Widget popularShops() {
    return Container(
      height: 240,
      child: Obx(
        () => ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: _controller.popularShop.length,
          itemBuilder: (context, index) {
            final shops = _controller.popularShop[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image(
                            image: NetworkImage(
                                "https://images.vexels.com/media/users/3/213440/isolated/preview/040949f1471f3cc09a1f96ecf442f529-shirt-on-hanger-by-vexels.png")),
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
                              Text(
                                  shops.rate == "0" ? "(0)" : "(${shops.rate})")
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget column() {
  return Container(
    width: 140,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20), color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(
                image: NetworkImage(
                    "https://images.vexels.com/media/users/3/213440/isolated/preview/040949f1471f3cc09a1f96ecf442f529-shirt-on-hanger-by-vexels.png")),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Shirts',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  )),
              Text('Gandhipuram',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic)),
              Row(
                children: [
                  RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 16.0,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
                  Text("(_rating)")
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    ),
  );
}
