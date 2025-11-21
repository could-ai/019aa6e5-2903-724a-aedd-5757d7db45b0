import 'package:flutter/material.dart';

class ChatListScreen extends StatelessWidget {
  const ChatListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // داده‌های ساختگی برای لیست چت
    final List<Map<String, dynamic>> chats = [
      {
        'name': 'علی محمدی',
        'lastMessage': 'سلام، خوبی؟ پروژه چطور پیش میره؟',
        'time': '10:30',
        'unread': 2,
        'avatar': Colors.blue,
      },
      {
        'name': 'گروه برنامه نویسان',
        'lastMessage': 'رضا: فایل جدید رو آپلود کردم.',
        'time': '09:15',
        'unread': 0,
        'avatar': Colors.green,
      },
      {
        'name': 'کانال خبری',
        'lastMessage': 'اخبار جدید تکنولوژی منتشر شد.',
        'time': 'دیروز',
        'unread': 5,
        'avatar': Colors.red,
      },
      {
        'name': 'پشتیبانی',
        'lastMessage': 'درخواست شما بررسی شد.',
        'time': 'دیروز',
        'unread': 0,
        'avatar': Colors.orange,
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
              child: Text(
                (chat['name'] as String)[0],
                style: const TextStyle(color: Colors.white),
              ),
            ),
            title: Text(chat['name'], style: const TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text(
              chat['lastMessage'],
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(chat['time'], style: TextStyle(fontSize: 12, color: Colors.grey[600])),
                if (chat['unread'] > 0)
                  Container(
                    margin: const EdgeInsets.only(top: 5),
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      chat['unread'].toString(),
                      style: const TextStyle(color: Colors.white, fontSize: 10),
                    ),
                  ),
              ],
            ),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/chat_detail',
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
