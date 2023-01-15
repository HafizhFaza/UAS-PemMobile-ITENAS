// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: ListView(
        padding: EdgeInsets.only(top: 5),
        children: [
          ChatBar(
            imageUrl:
                "https://cdn-1.motorsport.com/images/amp/0Rromjo0/s6/hafizh-syahrin-nts-rw-racing-g.jpg",
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
          ),
          ChatBar(
            imageUrl:
                "https://cdn-1.motorsport.com/images/amp/0Rromjo0/s6/hafizh-syahrin-nts-rw-racing-g.jpg",
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
          ),
          ChatBar(
            imageUrl:
                "https://cdn-1.motorsport.com/images/amp/0Rromjo0/s6/hafizh-syahrin-nts-rw-racing-g.jpg",
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
          ),
          ChatBar(
            imageUrl:
                "https://cdn-1.motorsport.com/images/amp/0Rromjo0/s6/hafizh-syahrin-nts-rw-racing-g.jpg",
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
          ),
          ChatBar(
            imageUrl:
                "https://cdn-1.motorsport.com/images/amp/0Rromjo0/s6/hafizh-syahrin-nts-rw-racing-g.jpg",
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
          ),
          ChatBar(
            imageUrl:
                "https://cdn-1.motorsport.com/images/amp/0Rromjo0/s6/hafizh-syahrin-nts-rw-racing-g.jpg",
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
          ),
          ChatBar(
            imageUrl:
                "https://cdn-1.motorsport.com/images/amp/0Rromjo0/s6/hafizh-syahrin-nts-rw-racing-g.jpg",
            title: faker.person.name(),
            subtitle: faker.lorem.sentence(),
          ),
        ],
      )),
    );
  }
}

class ChatBar extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;

  const ChatBar({
    required this.imageUrl,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      trailing: Text("10:00 AM"),
    );
  }
}
