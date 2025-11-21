import 'package:flutter/material.dart';

class FeedTab extends StatelessWidget {
  const FeedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('روبینو'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.add_box_outlined)),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 0),
            elevation: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: const CircleAvatar(child: Icon(Icons.person)),
                  title: Text('کاربر شماره $index'),
                  subtitle: const Text('۲ ساعت پیش'),
                  trailing: const Icon(Icons.more_vert),
                ),
                Container(
                  height: 250,
                  color: Colors.grey[300],
                  child: Center(
                    child: Icon(Icons.image, size: 100, color: Colors.grey[400]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.favorite_border),
                          const SizedBox(width: 16),
                          const Icon(Icons.comment_outlined),
                          const SizedBox(width: 16),
                          const Icon(Icons.send_outlined),
                          const Spacer(),
                          const Icon(Icons.bookmark_border),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'این یک پست نمونه در بخش روبینو است. کپشن پست اینجا قرار می‌گیرد.',
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
