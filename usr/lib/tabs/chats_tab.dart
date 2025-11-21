import 'package:flutter/material.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({super.key});

  @override
  Widget build(BuildContext context) {
    // داده‌های ساختگی برای لیست چت
    final List<Map<String, dynamic>> chats = [
      {
        'name': 'گروه دوستان',
        'message': 'سلام بچه‌ها، فردا برنامه چیه؟',
        'time': '12:30',
        'avatar': Colors.blue,
        'unread': 2,
        'isGroup': true,
      },
      {
        'name': 'علی محمدی',
        'message': 'فایل رو فرستادم، چک کن.',
        'time': '11:45',
        'avatar': Colors.green,
        'unread': 0,
        'isGroup': false,
      },
      {
        'name': 'کانال خبری',
        'message': 'اخبار جدید تکنولوژی در سال ۲۰۲۴...',
        'time': '10:15',
        'avatar': Colors.orange,
        'unread': 5,
        'isGroup': false,
      },
      {
        'name': 'پشتیبانی',
        'message': 'درخواست شما بررسی شد.',
        'time': 'دیروز',
        'avatar': Colors.red,
        'unread': 0,
        'isGroup': false,
      },
      {
        'name': 'سارا',
        'message': 'باشه، مرسی!',
        'time': 'دیروز',
        'avatar': Colors.purple,
        'unread': 0,
        'isGroup': false,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('پیام‌رسان'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: chat['avatar'],
              child: Icon(
                chat['isGroup'] ? Icons.group : Icons.person,
                color: Colors.white,
              ),
            ),
            title: Text(
              chat['name'],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              chat['message'],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  chat['time'],
                  style: TextStyle(color: Colors.grey[600], fontSize: 12),
                ),
                const SizedBox(height: 4),
                if (chat['unread'] > 0)
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      '${chat['unread']}',
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/chat',
                arguments: {'name': chat['name']},
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.edit),
      ),
    );
  }
}
