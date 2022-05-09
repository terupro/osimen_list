import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'dart:io';

part 'db.g.dart';

// テーブルの作成
class OsimenItem extends Table {
  // ①主キー（autoIncrementで自動的にIDを設置する）
  IntColumn get id => integer().autoIncrement()();
  // ②名前
  TextColumn get name =>
      text().withDefault(const Constant('')).withLength(min: 1)();
  // ③Twitter
  TextColumn get twitter => text().withDefault(const Constant(''))();
  // ④Instgram
  TextColumn get instagram => text().withDefault(const Constant(''))();
  // ⑤FaceBook
  TextColumn get facebook => text().withDefault(const Constant(''))();
  // ⑥TikTok
  TextColumn get tiktok => text().withDefault(const Constant(''))();
  // ⑦Youtube
  TextColumn get youtube => text().withDefault(const Constant(''))();
}

// データベースの場所を指定
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    // db.sqliteファイルをアプリのドキュメントフォルダに置く
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.splite'));
    return NativeDatabase(file);
  });
}

// データベースの実行
@DriftDatabase(tables: [OsimenItem])
class MyDatabase extends _$MyDatabase {
  MyDatabase() : super(_openConnection());
  // テーブルと列を変更するときに使用する
  @override
  int get schemaVersion => 1;

  // 全てのデータの取得
  Future<List<OsimenItemData>> readAllOsimenData() => select(osimenItem).get();

  // データの追加
  Future writeOsimen(OsimenItemCompanion data) => into(osimenItem).insert(data);

  // データの更新
  Future updateOsimen(OsimenItemData data) => update(osimenItem).replace(data);

  // データの削除
  Future deleteOsimen(int id) =>
      (delete(osimenItem)..where((it) => it.id.equals(id))).go();
}
