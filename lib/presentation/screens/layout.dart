import 'package:flutter/material.dart';
import 'package:task_tatware/core/constant/constantsColors.dart';
import 'package:task_tatware/presentation/screens/Home.dart';

import '../../core/utils/app_strings.dart';

class TaskLayout extends StatelessWidget {
  const TaskLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "${AppStrings.oranos}.",
        ),
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            radius: 2,
            backgroundImage: AssetImage('assets/homecircle.png'),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const ImageIcon(
              AssetImage('assets/Search.png'),
              color: Colors.black,
            ),
          )
        ],
      ),
      body: const HomeScreen(),

      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Home.png')),label: 'home'),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Star.png')),label: 'favorate'),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Wallet.png')),label: "wallet"),
        BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/Profile.png')),label: "Profile"),
      ],
      currentIndex: 0,
        selectedItemColor: ConstantsColors.mainColor,
        unselectedItemColor: ConstantsColors.textBlackColor,
      ),
    );
  }
}
