import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:laundryapp/constants/app_theme.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  late double _rating;
  double _initialRating = 3.0;

  @override
  void initState() {
    super.initState();
    _rating = _initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
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
                            itemSize: 20.0,
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              print(rating);
                              setState(() {
                                _rating = rating;
                              });
                            },
                          ),
                          Text("($_rating)")
                        ],
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      child: Image(
                          image: AssetImage("assets/fast_delivery.png"),
                          color: Color.fromRGBO(255, 255, 255, 0.1),
                          colorBlendMode: BlendMode.modulate),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
