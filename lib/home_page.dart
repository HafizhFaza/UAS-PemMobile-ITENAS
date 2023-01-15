import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:uas_app/chat.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:uas_app/settings.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedPage = 0;

  final _pageOptions = [Chat(), Settings()];

  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("List View"),
      ),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: ConvexAppBar(
          items: [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
          ],
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          }),
    ));
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  ChatItem({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(
        subtitle,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Text("10:00 AM"),
    );
  }
}
