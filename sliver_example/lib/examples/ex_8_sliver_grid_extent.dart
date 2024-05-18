import 'package:flutter/material.dart';

class SliverGridExtentExample extends StatelessWidget {
  const SliverGridExtentExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('SliverGridExtent'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverGrid.extent(
              maxCrossAxisExtent: 150.0,
              childAspectRatio: 2 / 3,
              children: List.generate(
                20,
                (index) => Container(
                    color: Colors.pink[100 * (index % 9)],
                    alignment: Alignment.center,
                    child: Text('Items $index')),
              ),
            )
          ],
        ),
      );
}
