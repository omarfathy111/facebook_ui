import 'package:facebook_app/colors/colors_facebook.dart';
import 'package:facebook_app/image_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'Home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,

      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Facebook',
            style: TextStyle(
              color: ColorsFacebook.blueColor,
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: ImageWidget(imageText: 'Plus.png', height: 26, width: 26),
            ),
            IconButton(
              onPressed: () {},
              icon: ImageWidget(
                imageText: 'Search.png',
                height: 20.17,
                width: 20.17,
              ),
            ),

            IconButton(
              onPressed: () {},
              icon: ImageWidget(
                imageText: 'Messenger.png',
                height: 22,
                width: 22,
              ),
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.blue,

            tabs: [
              Tab(
                icon: ImageWidget(
                  imageText: 'Vector.png',
                  height: 23.75,
                  width: 25,
                ),
              ),
              Tab(
                icon: ImageWidget(
                  imageText: 'Group 17.png',
                  height: 30,
                  width: 25,
                ),
              ),
              Tab(
                icon: ImageWidget(
                  imageText: 'Store.png',
                  height: 26,
                  width: 26,
                ),
              ),
              Tab(
                icon: ImageWidget(
                  imageText: 'Profile.png',
                  height: 30,
                  width: 30,
                ),
              ),
              Tab(
                icon: ImageWidget(
                  imageText: 'Notification.png',
                  height: 28,
                  width: 28,
                ),
              ),
              Tab(
                icon: ImageWidget(
                  imageText: 'Ellipse 1.png',
                  height: 31,
                  width: 31,
                ),
              ),
            ],
          ),
        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(height: 3, color: ColorsFacebook.greyColor),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    ImageWidget(
                      imageText: 'Ellipse 1.png',
                      height: 43,
                      width: 43,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'What’s in Your Mind?',
                            border: InputBorder.none,
                            hintStyle: TextStyle(
                              color: ColorsFacebook.greyColor,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.photo_library, color: Colors.green),
                  ],
                ),
              ),
              Container(height: 3, color: ColorsFacebook.greyColor),

              SizedBox(height: 20),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 10,
                  children: [
                    ImageWidget(
                      imageText: 'Group 7 (2).png',
                      width: 112,
                      height: 178,
                    ),
                    Stack(
                      children: [
                        ImageWidget(
                          imageText: 'Group 19.png',
                          width: 112,
                          height: 178,
                        ),

                        ImageWidget(
                          imageText: 'Ellipse 2.png',
                          width: 40,
                          height: 40,
                          left: 5,
                          top: 5,
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        ImageWidget(
                          imageText: 'Rectangle 8.png',
                          width: 112,
                          height: 178,
                        ),

                        ImageWidget(
                          imageText: 'Ellipse 4.png',
                          width: 40,
                          height: 40,
                          left: 10,
                          top: 5,
                        ),
                      ],
                    ),
                    Stack(
                      children: [
                        ImageWidget(
                          imageText:
                              '886d63dd3ed400cb6be6928b8bbdbc9f927c2621.jpg',
                          width: 112,
                          height: 178,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(height: 3, color: ColorsFacebook.greyColor),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageWidget(
                      imageText: 'Ellipse 6.png',
                      width: 53,
                      height: 53,
                    ),
                  ),
                  Column(
                    children: [
                      Text('Route'),
                      Row(
                        children: [
                          Text(
                            '8h',
                            style: TextStyle(color: ColorsFacebook.greyColor),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            Icons.public,
                            size: 15,
                            color: ColorsFacebook.greyColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 220),

                  Icon(Icons.more_horiz),
                ],
              ),
              Column(
                children: [
                  ImageWidget(
                    imageText: 'Rectangle 10 (2).png',
                    width: 393,
                    height: 271,
                  ),
                  Row(
                    children: [
                      SizedBox(width: 10),

                      Icon(Icons.favorite_border),
                      SizedBox(width: 10),

                      Icon(Icons.mode_comment_outlined),
                      SizedBox(width: 10),

                      Icon(Icons.call_made),
                      SizedBox(width: 225),
                      Icon(Icons.bookmark_border),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(height: 1, color: ColorsFacebook.blackColor),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ImageWidget(imageText: 
                      'Ellipse 6.png',
                      width: 53,
                      height: 53,
                    ),
                  ),
                Column(
                    children: [
                      Text('Route'),
                      Row(
                        children: [
                          Text(
                            '8h',
                            style: TextStyle(color: ColorsFacebook.greyColor),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            Icons.public,
                            size: 15,
                            color: ColorsFacebook.greyColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(width: 220),

                  Icon(Icons.more_horiz),
                ],
              ),
                  SizedBox(width: 200),
                  Icon(Icons.more_horiz),
                ],
              ),
            
        
        ),
      ),
    );
  }
}
