import 'package:dart_week_worldcup_album/app/pages/my_stickers/widgets/sticker_group.dart';
import 'package:dart_week_worldcup_album/app/pages/my_stickers/widgets/sticker_group_filter.dart';
import 'package:dart_week_worldcup_album/app/pages/my_stickers/widgets/sticker_status_filter.dart';
import 'package:flutter/material.dart';

class MyStickersPage extends StatelessWidget {
  const MyStickersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Figurinhas'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: const [
                StickerStatusFilter(filterSelected: '',),
                StickerGroupFilter(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) => const StickerGroup(),
            childCount: 1),
          ),
        ],
      ),
    );
  }
}
