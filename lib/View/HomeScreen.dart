import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rw/Common/home_page/bottom_navigation.dart';
import 'package:rw/View/profileScreen.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Common/home_page/CardRow1.dart';
import '../Common/home_page/tab1.dart';
import '../Common/home_page/tab2.dart';
import '../Common/home_page/tab3.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xFF031A28),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              floating: true,
              backgroundColor: Color(0xFF031A28),
              shape: const RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
              expandedHeight: 160,
              leading: const Icon(
                Icons.menu,
                color: Colors.red,
                size: 30,
              ),
              flexibleSpace: const FlexibleSpaceBar(
                title: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Hello Sarahas",
                      // style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    Text(
                      "Good Morning",
                      style: TextStyle(fontSize: 11, color: Colors.white),
                    )
                  ],
                ),
                centerTitle: true,
              ),
              actions: [
                const Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.white,
                ).pOnly(right: 5),
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/workout.png'),
                ).pOnly(right: 15, left: 5).onTap(() {
                  Get.to(ProfileScreen());
                }),
              ],
            ),
            SliverToBoxAdapter(
              child: Column(children: [
                ListTile(
                  leading: "Today Workout Plan"
                      .text
                      .color(Colors.white)
                      .size(22)
                      .make(),
                  trailing: "Mon 25 Apr".text.color(Colors.white).make(),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    // TODO   Box Images
                    children: [BoxImage(), BoxImage(), BoxImage(), BoxImage()],
                  ).pOnly(bottom: 10),
                ),
                tile(context),
                // TODO  TabBar
                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.black45,
                      borderRadius: BorderRadius.circular(40)),
                  child: TabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.red),
                      tabs: const [
                        Tab(
                          text: "Biggener",
                        ),
                        Tab(
                          text: "Intermediate",
                        ),
                        Tab(
                          text: "Advance",
                        )
                      ]),
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 1 / 3.5,
                    width: double.infinity,
                    child:
                        const TabBarView(children: [Tab1(), Tab2(), Tab3()])),

               
              ]).px(20),
            ),
            // CustomTabbar()
          ],
        ),
        // bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}

// TODO   ListTile
Widget tile(BuildContext context) {
  return ListTile(
    leading: "Workout Categeries".text.size(22).color(Colors.white).make(),
    trailing: "See All".text.color(Colors.white).make(),
  );
}
