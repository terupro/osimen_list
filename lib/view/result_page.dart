import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:osimen_list/component/link_widget.dart';
import 'package:osimen_list/view/home_page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/link.dart';

class ResultPage extends ConsumerWidget {
  const ResultPage({required this.osimen, Key? key}) : super(key: key);

  final Osimen osimen;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          osimen.title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Image.network(
            osimen.urlString,
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
