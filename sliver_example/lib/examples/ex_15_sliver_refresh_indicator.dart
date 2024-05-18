import 'package:flutter/material.dart';

class SliverRefreshIndicatorExample extends StatefulWidget {
  const SliverRefreshIndicatorExample({super.key});

  @override
  State<SliverRefreshIndicatorExample> createState() =>
      _SliverRefreshIndicatorExampleState();
}

class _SliverRefreshIndicatorExampleState
    extends State<SliverRefreshIndicatorExample> {
  Future<void> _handleRefresh() async {
    await Future<void>.delayed(const Duration(seconds: 2));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('SliverListWithRefresh'),
        ),
        body: RefreshIndicator(
          onRefresh: _handleRefresh,
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(
                          title: Text('Item $index'),
                        ),
                    childCount: 20),
              )
            ],
          ),
        ),
      );
}
