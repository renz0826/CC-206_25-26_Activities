import 'package:flutter/material.dart';
import 'widgets/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                TabBar(
                  labelColor: const Color.fromARGB(255, 28, 139, 0),
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: const Color.fromARGB(255, 28, 139, 0),
                  overlayColor: WidgetStatePropertyAll(
                    Colors.green.withOpacity(0.1),
                  ),
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
      ),
      home: MainTabBar(),
    );
  }
}
