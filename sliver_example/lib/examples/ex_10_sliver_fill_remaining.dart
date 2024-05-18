import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SliverFillRemainingExample extends StatelessWidget {
  const SliverFillRemainingExample({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('SliverFillRemaining'),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                height: 150.0,
                color: Colors.amber,
                alignment: Alignment.center,
                child: const Text('SliverToAdapter at Top'),
              ),
            ),
            SliverFillRemaining(
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text('Fill Remaining Space'),
              ),
            )
          ],
        ),
      );
}
