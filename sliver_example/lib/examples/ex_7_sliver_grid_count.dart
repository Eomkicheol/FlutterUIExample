import 'package:flutter/material.dart';

class SliverGridCountExample extends StatelessWidget {
  const SliverGridCountExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('SliverGridCount'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverGrid.count(
              crossAxisCount: 4,
              children: List.generate(
                20,
                (index) => Container(
                  color: Colors.pink[100 * (index % 9)],
                  alignment: Alignment.center,
                  child: Text('GridCount $index'),
                ),
              ),
            )
          ],
        ),
      );
}
