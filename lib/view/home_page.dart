import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:osimen_list/util/util.dart';
import 'package:osimen_list/view/result_page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final searchController = TextEditingController();
  List<Osimen> osimens = allOsimen;

  @override
  Widget build(BuildContext context) {
    void searchOsimen(String query) {
      final search = allOsimen.where(
        (osimen) {
          final osimenTitle = osimen.title.toLowerCase();
          final input = query.toLowerCase();
          return osimenTitle.contains(input);
        },
      ).toList();
      setState(() {
        osimens = search;
      });
    }

    return KeyboardDismissOnTap(
      dismissOnCapturedTaps: false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '推しメンリスト',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  hintText: ('推しメンを探す'),
                  border: kInputBorderStyle,
                  focusedBorder: kInputBorderStyle,
                  enabledBorder: kInputBorderStyle,
                ),
                onChanged: searchOsimen,
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: osimens.length,
                itemBuilder: (context, index) {
                  final osimen = osimens[index];
                  return Column(
                    children: [
                      const Divider(),
                      ListTile(
                        leading: Image.network(
                          osimen.urlString,
                          fit: BoxFit.cover,
                          width: 50,
                          height: 50,
                        ),
                        title: Text(osimen.title),
                        trailing: IconButton(
                          icon: const Icon(Icons.arrow_circle_right),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ResultPage(osimen: osimen),
                              )),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          items: const [TabItem(icon: Icons.add)],
          onTap: (_) {
            showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              builder: (context) => Container(
                height: MediaQuery.of(context).size.height * 0.8,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 70,
                      child: const Center(
                        child: Text(
                          'プロフィール設定',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25.0),
                          topRight: Radius.circular(25.0),
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(height: 5),
                        const CircleAvatar(
                          radius: 80,
                          backgroundImage: NetworkImage(
                              'https://sportiva.shueisha.co.jp/clm/baseball/hs_other/2021/assets_c/2021/03/6e0c670e5cae9d2943ef894afda4fc1ed9b3107b-thumb-550xauto-250190.jpg'),
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
                                    hintText: '小芝風花',
                                  ),
                                ),
                              ),
                              settingWidget(
                                'Twitter',
                                TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'https://.com',
                                  ),
                                ),
                              ),
                              settingWidget(
                                'Facebook',
                                TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'https://.com',
                                  ),
                                ),
                              ),
                              settingWidget(
                                'Instagram',
                                TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'https://.com',
                                  ),
                                ),
                              ),
                              settingWidget(
                                'TikTok',
                                TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'https://.com',
                                  ),
                                ),
                              ),
                              settingWidget(
                                'Youtube',
                                TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'https://.com',
                                  ),
                                ),
                              ),
                              settingWidget(
                                'Blog',
                                TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'https://.com',
                                  ),
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 50,
                                color: Colors.blue,
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
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

Widget settingWidget(String label, Widget child) {
  return Row(
    children: [
      SizedBox(width: 80, child: Text(label)),
      Expanded(child: child),
    ],
  );
}

class Osimen {
  final String title;
  final String urlString;

  const Osimen({
    required this.title,
    required this.urlString,
  });
}

const allOsimen = [
  Osimen(
    title: '小芝風花',
    urlString:
        'https://sportiva.shueisha.co.jp/clm/baseball/hs_other/2021/assets_c/2021/03/6e0c670e5cae9d2943ef894afda4fc1ed9b3107b-thumb-550xauto-250190.jpg',
  ),
  Osimen(
    title: '足立佳奈',
    urlString: 'https://pbs.twimg.com/media/D5Zvb9WU8AA1WD1.jpg',
  ),
  Osimen(
    title: '莉子',
    urlString:
        'https://i.pinimg.com/originals/6c/94/00/6c9400026e538d52c75aefc77d020ab7.jpg',
  ),
  Osimen(
    title: '小芝風花',
    urlString:
        'https://sportiva.shueisha.co.jp/clm/baseball/hs_other/2021/assets_c/2021/03/6e0c670e5cae9d2943ef894afda4fc1ed9b3107b-thumb-550xauto-250190.jpg',
  ),
  Osimen(
    title: '足立佳奈',
    urlString: 'https://pbs.twimg.com/media/D5Zvb9WU8AA1WD1.jpg',
  ),
  Osimen(
    title: '莉子',
    urlString:
        'https://i.pinimg.com/originals/6c/94/00/6c9400026e538d52c75aefc77d020ab7.jpg',
  ),
  Osimen(
    title: '小芝風花',
    urlString:
        'https://sportiva.shueisha.co.jp/clm/baseball/hs_other/2021/assets_c/2021/03/6e0c670e5cae9d2943ef894afda4fc1ed9b3107b-thumb-550xauto-250190.jpg',
  ),
  Osimen(
    title: '足立佳奈',
    urlString: 'https://pbs.twimg.com/media/D5Zvb9WU8AA1WD1.jpg',
  ),
  Osimen(
    title: '莉子',
    urlString:
        'https://i.pinimg.com/originals/6c/94/00/6c9400026e538d52c75aefc77d020ab7.jpg',
  ),
  Osimen(
    title: '小芝風花',
    urlString:
        'https://sportiva.shueisha.co.jp/clm/baseball/hs_other/2021/assets_c/2021/03/6e0c670e5cae9d2943ef894afda4fc1ed9b3107b-thumb-550xauto-250190.jpg',
  ),
  Osimen(
    title: '足立佳奈',
    urlString: 'https://pbs.twimg.com/media/D5Zvb9WU8AA1WD1.jpg',
  ),
  Osimen(
    title: '莉子',
    urlString:
        'https://i.pinimg.com/originals/6c/94/00/6c9400026e538d52c75aefc77d020ab7.jpg',
  ),
];
