import 'package:flutter/material.dart';
import 'package:simpe_flutter_application/pages/pet.dart';
import 'package:simpe_flutter_application/pages/profile.dart';

class MainTabBar extends StatelessWidget {
  const MainTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              TabBar(
                tabs: const [
                  Tab(text: 'My Profile', icon: Icon(Icons.person)),
                  Tab(text: 'My Pet', icon: Icon(Icons.pets)),
                ],
              ),
              const Expanded(child: TabBarView(children: [Profile(), Pet()])),
            ],
          ),
        ),
      ),
    );
  }
}
