import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:osimen_list/model/db/db.dart';
import 'package:osimen_list/model/freezed/osimen.dart';
import 'package:osimen_list/util/util.dart';
import 'package:osimen_list/view/editing_page.dart';
import 'package:osimen_list/view/result_page.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:osimen_list/view/setting_page.dart';
import 'package:osimen_list/view_model/provider.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final _osimenDatabaseProvider = ref.watch(osimenDatabaseProvider);
    final _osimenDatabaseNotifier = ref.watch(osimenDatabaseProvider.notifier);

    // 入力した全ての値
    List<OsimenItemData> osimenItems =
        _osimenDatabaseNotifier.state.osimenItems;

    // todo一覧
    List<Widget> _allOsimenCard(
      List<OsimenItemData> items,
      OsimanDatabaseNotifier db,
    ) {
      List<Widget> list = [];
      for (OsimenItemData item in items) {
        Widget card = OsimenCard(osimen: item, db: db);
        list.add(card);
      }
      return list;
    }

    // todoの一覧を格納するリスト
    List<Widget> _allCard =
        _allOsimenCard(osimenItems, _osimenDatabaseNotifier);

    void searchOsimen(String query) {
      final search = _allOsimenCard(osimenItems, _osimenDatabaseNotifier).where(
        (osimen) {
          // ここのosimenをクラスにしたい
          final osimenTitle = osimen.name.toLowerCase();
          final input = query.toLowerCase();
          return osimenTitle.contains(input);
        },
      ).toList();
      setState(() {
        _allCard = search;
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
              child: ListView(
                children: _allOsimenCard(osimenItems, _osimenDatabaseNotifier),
              ),
            ),
          ],
        ),
        bottomNavigationBar: ConvexAppBar(
          items: const [TabItem(icon: Icons.add)],
          onTap: (_) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SettingPage(),
                fullscreenDialog: true,
              ),
            );
          },
        ),
      ),
    );
  }
}

class OsimenCard extends StatelessWidget {
  const OsimenCard({
    Key? key,
    required this.osimen,
    required this.db,
  }) : super(key: key);

  final OsimenItemData osimen;
  final OsimanDatabaseNotifier db;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        'https://i0.wp.com/nobon.me/wp-content/uploads/2020/08/1111.jpg?fit=1242%2C1064&ssl=1',
        fit: BoxFit.cover,
        width: 50,
        height: 50,
      ),
      title: Text(osimen.name),
      trailing: IconButton(
        icon: const Icon(Icons.arrow_circle_right),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultPage(osimen: osimen),
          ),
        ),
      ),
    );
  }
}
