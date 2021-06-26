import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        actions: [
          IconButton(
              onPressed: () {
                // Get.to(CartScreen());
              },
              icon: Icon(Icons.edit)),
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Hero(
                    tag: 'tag',
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/user_pic.png'),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "N.Raveendran",
                          style: TextStyle(fontSize: 28),
                        ),
                        Row(
                          children: [
                            Icon(Icons.call),
                            SizedBox(
                              width: 10,
                            ),
                            Text('+91 965 912 4143'),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.mail),
                            SizedBox(
                              width: 10,
                            ),
                            Text('rv@gmail.com'),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.wrong_location_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Manage Address'),
                            ],
                          ),
                          Icon(Icons.navigate_next_sharp),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.branding_watermark_sharp),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Terms OF Use'),
                            ],
                          ),
                          Icon(Icons.navigate_next_sharp),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.privacy_tip_outlined),
                              SizedBox(
                                width: 10,
                              ),
                              Text('Privacy Policy'),
                            ],
                          ),
                          Icon(Icons.navigate_next_sharp),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.logout_outlined, color: Colors.red),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Logout',
                            style: TextStyle(fontSize: 16, color: Colors.red),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.navigate_next_sharp,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
