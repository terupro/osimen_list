import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:osimen_list/component/setting_widget.dart';
import 'package:osimen_list/view/home_page.dart';

class EditingPage extends ConsumerWidget {
  final twitterFocus = FocusNode();
  final instagramFocus = FocusNode();
  final facebookFocus = FocusNode();
  final tiktokFocus = FocusNode();
  final youtubeFocus = FocusNode();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
          title: const Text(
        'プロフィール設定',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: KeyboardDismissOnTap(
        dismissOnCapturedTaps: false,
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            children: [
              const SizedBox(height: 10),
              Stack(
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://t4.ftcdn.net/jpg/00/64/67/63/360_F_64676383_LdbmhiNM6Ypzb3FM4PPuFP9rHe7ri8Ju.jpg',
                    ),
                  ),
                  Positioned(
                    bottom: -10,
                    right: -2,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.add_a_photo,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    settingWidget(
                      '名前',
                      TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '推しメン',
                        ),
                        onEditingComplete: () {
                          twitterFocus.requestFocus();
                        },
                      ),
                    ),
                    settingWidget(
                      'Twitter',
                      TextField(
                        focusNode: twitterFocus,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '@twitter',
                        ),
                        onEditingComplete: () {
                          facebookFocus.requestFocus();
                        },
                      ),
                    ),
                    settingWidget(
                      'Facebook',
                      TextField(
                        focusNode: facebookFocus,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '@facebook',
                        ),
                        onEditingComplete: () {
                          instagramFocus.requestFocus();
                        },
                      ),
                    ),
                    settingWidget(
                      'Instagram',
                      TextField(
                        focusNode: instagramFocus,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '@instagram',
                        ),
                        onEditingComplete: () {
                          tiktokFocus.requestFocus();
                        },
                      ),
                    ),
                    settingWidget(
                      'TikTok',
                      TextField(
                        focusNode: tiktokFocus,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '@tiktok',
                        ),
                        onEditingComplete: () {
                          youtubeFocus.requestFocus();
                        },
                      ),
                    ),
                    settingWidget(
                      'Youtube',
                      TextField(
                        focusNode: youtubeFocus,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: '@youtube',
                        ),
                        onEditingComplete: () {
                          twitterFocus.requestFocus();
                        },
                      ),
                    ),
                    const SizedBox(height: 15),
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: Colors.blue,
                      margin: EdgeInsets.only(bottom: 10),
                      child: ElevatedButton(
                        child: const Text(
                          '準備完了',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
