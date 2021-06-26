import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:laundryapp/view/cart/cart_screen.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({Key? key}) : super(key: key);

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Orders"),
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(CartScreen());
              },
              icon: Icon(Icons.add_shopping_cart)),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _hText("Current Orders"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Order ID: #NYMACA13"),
                        Text("11.06.2021")
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
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
                                    image:
                                        AssetImage("assets/fast_delivery.png"),
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                    colorBlendMode: BlendMode.modulate),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Pending",
                              style: TextStyle(color: Colors.orange[200]),
                            )),
                        Divider(
                          color: Colors.black,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: Colors.redAccent[200]),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Order ID: #NYMACA13"),
                        Text("11.06.2021")
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
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
                                    image:
                                        AssetImage("assets/fast_delivery.png"),
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                    colorBlendMode: BlendMode.modulate),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Pending",
                              style: TextStyle(color: Colors.orange[200]),
                            )),
                        Divider(
                          color: Colors.black,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: Colors.redAccent[200]),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Order ID: #NYMACA13"),
                        Text("11.06.2021")
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
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
                                    image:
                                        AssetImage("assets/fast_delivery.png"),
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                    colorBlendMode: BlendMode.modulate),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Pending",
                              style: TextStyle(color: Colors.orange[200]),
                            )),
                        Divider(
                          color: Colors.black,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: Colors.redAccent[200]),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Order ID: #NYMACA13"),
                        Text("11.06.2021")
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white),
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
                                    image:
                                        AssetImage("assets/fast_delivery.png"),
                                    color: Color.fromRGBO(255, 255, 255, 0.1),
                                    colorBlendMode: BlendMode.modulate),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Pending",
                              style: TextStyle(color: Colors.orange[200]),
                            )),
                        Divider(
                          color: Colors.black,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Cancel",
                              style: TextStyle(color: Colors.redAccent[200]),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _hText(String? heading) {
  return Padding(
    padding: const EdgeInsets.only(left: 15, bottom: 20),
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
