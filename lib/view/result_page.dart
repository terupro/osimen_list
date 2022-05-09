import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:osimen_list/component/link_widget.dart';
import 'package:osimen_list/model/db/db.dart';
import 'package:osimen_list/view/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({required this.osimen, Key? key}) : super(key: key);

  final OsimenItemData osimen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          osimen.name,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Image.network(
            'https://i0.wp.com/nobon.me/wp-content/uploads/2020/08/1111.jpg?fit=1242%2C1064&ssl=1',
            width: double.infinity,
            height: 300,
            fit: BoxFit.cover,
          ),
          Link(
            uri: Uri.parse('https://twitter.com/riko_riko1204'),
            target: LinkTarget.self,
            builder: ((context, followLink) {
              return LinkWidget(
                icon: FontAwesomeIcons.blog,
                label: 'Twitter',
                color: Colors.lightBlue,
                press: followLink,
              );
            }),
          ),
          LinkWidget(
            icon: FontAwesomeIcons.blog,
            label: 'Facebook',
            color: Colors.blue,
          ),
          LinkWidget(
            icon: FontAwesomeIcons.blog,
            label: 'Instagram',
            color: Colors.pink,
          ),
          LinkWidget(
            icon: FontAwesomeIcons.blog,
            label: 'TikTok',
            color: Colors.black,
          ),
          LinkWidget(
            icon: FontAwesomeIcons.blog,
            label: 'Youtube',
            color: Color.fromARGB(255, 251, 0, 0),
          ),
          LinkWidget(
            icon: FontAwesomeIcons.blog,
            label: 'Blog',
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
