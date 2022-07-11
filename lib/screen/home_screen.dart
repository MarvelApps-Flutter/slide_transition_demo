import 'package:flutter/material.dart';

import '../dummy_data/data.dart';
import '../model/chat.dart';
import '../utils/utils.dart';
import '../widget/slidable_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Chat> items = List.of(Data.chats);

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: const Text(
            "Slide Transition Module",
          ),
          centerTitle: true,
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(12),
          itemCount: items.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {
            final item = items[index];

            return SlidableWidget(
              child: buildListTile(item),
              background: buildBackground(item),
              onSlided: () {
                setState(() {
                  item.isFavourite = !item.isFavourite;
                });

                Utils.showSnackBar(context,
                    'You have ${item.isFavourite ? 'LIKED' : 'UNLIKED'} your chat partner.');
              },
            );
          },
        ),
      );

  Widget buildBackground(Chat item) => Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(16)),
          color: Colors.black.withOpacity(0.1),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.favorite_border,
          size: 32,
          color: item.isFavourite ? Colors.red : Colors.white,
        ),
      );

  Widget buildListTile(Chat item) => Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(16)),
          color: Colors.white,
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          leading: SizedBox(
            width: 80,
            height: 80,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(item.urlAvatar),
                ),
                if (item.isFavourite)
                  Positioned(
                    child: buildHeart(),
                    left: 1,
                    top: 2,
                  ),
              ],
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                item.username,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                item.message,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
          onTap: () {},
        ),
      );

  Widget buildHeart() => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.white,
          border: Border.all(width: 2, color: Colors.red),
        ),
        padding: const EdgeInsets.all(2),
        child: const Icon(Icons.favorite, color: Colors.red, size: 16),
      );
}
