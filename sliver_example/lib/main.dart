import 'package:flutter/material.dart';
import 'package:sliver_example/examples.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SliverExampleNavigatorList(),
    );
  }
}

final List<Map<String, dynamic>> _examples = [
  {
    'title': 'SliverAppBar',
    'widget': const SliverAppBarExample(),
  },
  {
    'title': 'SliverPersitentHeader',
    'widget': const SliverPersistentHeaderExample(),
  },
  {
    'title': 'SliverPadding',
    'widget': const SliverPaddingExample(),
  },
  {
    'title': 'SliverToBoxAdapter',
    'widget': const SliverToBoxAdapterExample(),
  },
  {
    'title': 'SliverGrid',
    'widget': const SliverGridExample(),
  },
  {
    'title': 'SliverFixedExtendedList',
    'widget': const SliverFixedExtentListExample(),
  },
  {
    'title': 'SliverGridCount',
    'widget': const SliverGridCountExample(),
  },
  {
    'title': 'SliverGridExtent',
    'widget': const SliverGridExtentExample(),
  },
  {
    'title': 'SliverAnimatedList',
    'widget': const SliverAnimatedListExample(),
  },
  {
    'title': 'SliverFillRemainning',
    'widget': const SliverFillRemainingExample(),
  },
  {
    'title': 'SliverFillViewPort',
    'widget': const SliverFillViewPortExample(),
  },
  {
    'title': 'Sliver Overlap',
    'widget': const SliverOverlapAbsoberExample(),
  }
];

class SliverExampleNavigatorList extends StatelessWidget {
  const SliverExampleNavigatorList({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text(
            'sliver examples',
            style: (TextStyle(color: Colors.white)),
          ),
          backgroundColor: Colors.primaries.first,
        ),
        body: ListView.builder(
          itemCount: _examples.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(
              _examples[index]['title'],
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => _examples[index]['widget'],
              ),
            ),
          ),
        ),
      );
}
