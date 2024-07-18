import 'package:flutter/material.dart';
import 'package:explorify/screens/home_screen.dart';
import 'package:explorify/screens/search_screen.dart';
import 'package:explorify/screens/favorite_screen.dart';
import 'package:explorify/screens/setting_screen.dart';
import 'package:iconsax/iconsax.dart';

class TabNavigation extends StatelessWidget {

  const TabNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: TabBarView(
            children: [
              HomeScreen(),
              SearchScreen(),
              FavoriteScreen(),
              SettingScreen(),
            ],
          ),
          bottomNavigationBar: TabBar(
            unselectedLabelColor: Colors.black54,
            labelColor: Colors.black,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                  width: 2.0, color: Colors.black,),
              insets: EdgeInsets.symmetric(horizontal: 40),
            ),
            tabs: [
              Tab(
                icon: Icon(Iconsax.home),
              ),
              Tab(
                icon: Icon(Iconsax.search_normal),
              ),
              Tab(
                icon: Icon(Iconsax.heart),
              ),
              Tab(
                icon: Icon(Iconsax.setting),
              ),
            ],
          ),
        ),
      ),
    );
  }
}