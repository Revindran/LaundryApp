import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LocationHeader extends StatelessWidget {
  const LocationHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: Get.width / 1.5,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(40)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 0,
                    ),
                    Icon(Icons.edit_location_outlined),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Coimbatore, TN',
                      style: TextStyle(color: Colors.grey[600], fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Hero(
              tag: 'tag',
              child: Container(
                width: 40.0,
                height: 40.0,
                decoration: new BoxDecoration(
                  shape: BoxShape.circle,
                  image: new DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/user_pic.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
