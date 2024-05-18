import 'package:flutter/material.dart';

class SliverToBoxAdapterExample extends StatelessWidget {
  const SliverToBoxAdapterExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: 150.0,
                color: Colors.amber,
                alignment: Alignment.center,
                child: const Text(
                  'SlivetToBoxAdapter',
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 50,
                  (context, index) => ListTile(
                        title: Text('List Item $index'),
                      )),
            )
          ],
        ),
      );
}
