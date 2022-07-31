import 'dart:io';

import 'package:flutter/material.dart';
import 'package:seu_blood_2/pages/bottom_navs/home.dart';
import 'package:seu_blood_2/pages/bottom_navs/news_feeds.dart';
import 'package:seu_blood_2/pages/bottom_navs/profile.dart';
import 'package:seu_blood_2/pages/bottom_navs/search.dart';
import 'package:seu_blood_2/pages/request/blood_request.dart';
import 'package:seu_blood_2/utils/app_colors.dart';
import 'package:seu_blood_2/utils/app_strings.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int currentTab = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const SearchScreen(),
    const NewsFeedsScreen(),
    const ProfileScreen(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomeScreen();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        currentTab == 1
            ? Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (_) => const CustomBottomNavigationBar()))
            : currentTab == 2
                ? Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const CustomBottomNavigationBar()))
                : currentTab == 3
                    ? Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const CustomBottomNavigationBar()))
                    : showDialog(
                        context: context,
                        barrierDismissible: false,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(StringManager.confirmExit),
                            content: Text(StringManager.sureExit),
                            actions: [
                              TextButton(
                                child: Text(StringManager.yes),
                                onPressed: () {
                                  exit(0);
                                },
                              ),
                              TextButton(
                                child: Text(StringManager.no),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                              )
                            ],
                          );
                        });
        return true;
      },
      child: Scaffold(
        body: PageStorage(
          child: currentScreen,
          bucket: bucket,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const BloodRequestScreen(),
              ),
            );
          },
          backgroundColor: ColorManager.primaryColor,
          elevation: 0,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.add,
                  color: ColorManager.white,
                ),
                Text(
                  StringManager.makeAPost,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 8,
                    fontWeight: FontWeight.bold,
                    color: ColorManager.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: SizedBox(
            height: height * 0.1,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const HomeScreen();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: currentTab == 0
                            ? ColorManager.primaryColor
                            : Colors.grey,
                      ),
                      Text(
                        StringManager.home,
                        style: TextStyle(
                          color: currentTab == 0
                              ? ColorManager.primaryColor
                              : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 40),
                  child: MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = const SearchScreen();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.search,
                          color: currentTab == 1
                              ? ColorManager.primaryColor
                              : Colors.grey,
                        ),
                        Text(
                          StringManager.search,
                          style: TextStyle(
                              color: currentTab == 1
                                  ? ColorManager.primaryColor
                                  : Colors.grey,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const NewsFeedsScreen();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_fire_department_outlined,
                        color: currentTab == 3
                            ? ColorManager.primaryColor
                            : Colors.grey,
                      ),
                      Text(
                        StringManager.newsFeeds,
                        style: TextStyle(
                          color: currentTab == 3
                              ? ColorManager.primaryColor
                              : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    setState(() {
                      currentScreen = const ProfileScreen();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person,
                        color: currentTab == 2
                            ? ColorManager.primaryColor
                            : Colors.grey,
                      ),
                      Text(
                        StringManager.profile,
                        style: TextStyle(
                          color: currentTab == 2
                              ? ColorManager.primaryColor
                              : Colors.grey,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterDocked,
      ),
    );
  }
}
