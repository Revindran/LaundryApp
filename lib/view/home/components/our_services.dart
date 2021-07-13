import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:laundryapp/constants/constants.dart';
import 'package:laundryapp/controllers/home_view_controller.dart';

class ServiceHScroll extends StatelessWidget {
  final HomeViewController _controller = Get.find<HomeViewController>();

  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Obx(
        () => ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: _controller.serviceItemList.length,
          itemBuilder: (context, index) {
            final service = _controller.serviceItemList[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child:
                          Image(image: NetworkImage("${Constants.imageUrl}")),
                    ),
                    Text('${service.name}'),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
