import 'package:flutter/material.dart';

class SliverAppGridExample extends StatelessWidget {
  const SliverAppGridExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.blue,
              expandedHeight: 150.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text('Mixed Sliver Layout'),
                background: Image.network(
                  'https://picsum.photos/250?image=10',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (context, index) => Container(
                        color: Colors.teal[100 * (index % 9)],
                        alignment: Alignment.center,
                        child: Text('Grid Item $index'),
                      ),
                  childCount: 20),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) => ListTile(
                title: Text('List Item $index'),
              ),
              childCount: 15,
            ))
          ],
        ),
      );
}
