import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundryapp/controllers/home_view_controller.dart';
import 'package:laundryapp/view/porfile/profile_screen.dart';

class LocationHeader extends StatelessWidget {
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
                    GetBuilder<HomeViewController>(
                      builder: (_c) => Text(
                        _c.addressLine.value.isEmpty
                            ? 'Loading....'
                            : '${_c.addressLine.value}',
                        style: TextStyle(color: Colors.grey[600], fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              onTap: () => Get.to(ProfileScreen()),
              child: Hero(
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
            ),
          ],
        ),
      ),
    );
  }
}
