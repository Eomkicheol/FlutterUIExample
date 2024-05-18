import 'package:flutter/material.dart';

class SliverFillViewPortExample extends StatelessWidget {
  const SliverFillViewPortExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('SliverFillViewPort'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillViewport(
              delegate: SliverChildBuilderDelegate(
                childCount: 10,
                (context, index) => Container(
                  color: Colors.purple[100 * (index % 9)],
                  alignment: Alignment.center,
                  child: Text(
                    "Item $index",
                    style: const TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
              viewportFraction: 0.5,
            )
          ],
        ),
      );
}
