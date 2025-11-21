import 'package:flutter/material.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ویترین'),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: Text('کاربر شماره ${index + 1}'),
                  subtitle: const Text('2 ساعت پیش'),
                  trailing: const Icon(Icons.more_vert),
                ),
                Container(
                  height: 200,
                  color: Colors.grey[300],
                  child: const Center(child: Icon(Icons.image, size: 50, color: Colors.grey)),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'این یک پست نمونه شبیه به پست‌های روبیکا یا اینستاگرام است که در بخش ویترین نمایش داده می‌شود.',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                Row(
                  children: [
                    IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
                    IconButton(icon: const Icon(Icons.comment_outlined), onPressed: () {}),
                    IconButton(icon: const Icon(Icons.share_outlined), onPressed: () {}),
                    const Spacer(),
                    IconButton(icon: const Icon(Icons.bookmark_border), onPressed: () {}),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
