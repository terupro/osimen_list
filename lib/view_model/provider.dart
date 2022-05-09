import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:osimen_list/model/db/db.dart';
import 'package:osimen_list/model/freezed/osimen.dart';

// DBへの読み込み、追加、削除などを行うファイル
// DBへの操作が行われるたびに更新通知を送り、画面を再描画する。

class OsimanDatabaseNotifier extends StateNotifier<OsimenStateData> {
  // データベースの状態が変わるたびにTodoのviewをビルドするようにするクラス
  OsimanDatabaseNotifier() : super(OsimenStateData());

  // 以降、データベースに関する処理をこのクラスで行えるように記述
  final _db = MyDatabase();

  writeData(TempOsimenItemData data) async {
    if (data.name.isEmpty) {
      return;
    }
    OsimenItemCompanion entry = OsimenItemCompanion(
      name: Value(data.name),
      twitter: Value(data.twitter),
      facebook: Value(data.facebook),
      instagram: Value(data.instagram),
      tiktok: Value(data.tiktok),
      youtube: Value(data.youtube),
    );
    state = state.copyWith(isLoading: true);
    await _db.writeOsimen(entry);
    readData();
    // 書き込むたびにデータベースを読み込む
  }

  // 削除処理部分
  deleteData(OsimenItemData data) async {
    state = state.copyWith(isLoading: true);
    await _db.deleteOsimen(data.id);
    readData();
    // 削除たびにデータベースを読み込む
  }

  // 更新処理部分
  updateData(OsimenItemData data) async {
    if (data.name.isEmpty) {
      return;
    }
    state = state.copyWith(isLoading: true);
    await _db.updateOsimen(data);
    readData();
    // 更新するたびにデータベースを読み込む
  }

  // データ読み込み処理
  readData() async {
    state = state.copyWith(isLoading: true);
    final todoItems = await _db.readAllOsimenData();

    state = state.copyWith(
      isLoading: false,
      isReadyData: true,
      osimenItems: todoItems,
    );
  }
}

final osimenDatabaseProvider = StateNotifierProvider((_) {
  OsimanDatabaseNotifier notifier = OsimanDatabaseNotifier();
  notifier.readData();
  return notifier;
});
