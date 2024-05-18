import 'package:flutter/material.dart';

class SliverAppBarWithTabsExample extends StatelessWidget {
  const SliverAppBarWithTabsExample({super.key});

  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const SliverAppBar(
                pinned: true,
                floating: true,
                title: Text('SliverAppbar with Tabs'),
                bottom: TabBar(tabs: [
                  Tab(icon: Icon(Icons.info), text: 'Tab 1'),
                  Tab(icon: Icon(Icons.lightbulb_outline), text: 'Tab 2'),
                  Tab(icon: Icon(Icons.add), text: 'Tab 3'),
                ]),
              ),
            ],
            body: const TabBarView(
              children: [
                Center(child: Text('Centent of Tab1')),
                Center(child: Text('Centent of Tab2')),
                Center(child: Text('Centent of Tab3')),
              ],
            ),
          ),
        ),
      );
}
