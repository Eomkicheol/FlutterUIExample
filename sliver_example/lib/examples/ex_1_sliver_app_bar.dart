import 'package:flutter/material.dart';

class SliverAppBarExample extends StatelessWidget {
  const SliverAppBarExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: const Text(
                  'SliverAppBar',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                background: Image.network(
                  'https://via.placeholder.com/200',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 100,
                (context, index) => ListTile(
                  title: Text('List Item: $index'),
                ),
              ),
            )
          ],
        ),
      );
}
