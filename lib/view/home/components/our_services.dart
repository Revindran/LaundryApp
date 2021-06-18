import 'package:flutter/material.dart';

class ServiceHScroll extends StatelessWidget {
  const ServiceHScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        child: Row(
          children: [
            _hSizedBox(),
            Container(
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image(
                        image: NetworkImage(
                            "https://images.vexels.com/media/users/3/213440/isolated/preview/040949f1471f3cc09a1f96ecf442f529-shirt-on-hanger-by-vexels.png")),
                  ),
                  Text('Shirts'),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            _hSizedBox(),
            Container(
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image(
                        image: NetworkImage(
                            "https://images.vexels.com/media/users/3/213440/isolated/preview/040949f1471f3cc09a1f96ecf442f529-shirt-on-hanger-by-vexels.png")),
                  ),
                  Text('Shirts'),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            _hSizedBox(),
            Container(
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image(
                        image: NetworkImage(
                            "https://images.vexels.com/media/users/3/213440/isolated/preview/040949f1471f3cc09a1f96ecf442f529-shirt-on-hanger-by-vexels.png")),
                  ),
                  Text('Shirts'),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
            _hSizedBox(),
            Container(
              width: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image(
                        image: NetworkImage(
                            "https://images.vexels.com/media/users/3/213440/isolated/preview/040949f1471f3cc09a1f96ecf442f529-shirt-on-hanger-by-vexels.png")),
                  ),
                  Text('Shirts'),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _hSizedBox() {
  return SizedBox(
    width: 20,
  );
}
