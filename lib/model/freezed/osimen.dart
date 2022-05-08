import 'package:osimen_list/model/db/db.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'osimen.freezed.dart';

@freezed
class OsimenStateData with _$OsimenStateData {
  // DBの状態を保持するクラス
  factory OsimenStateData({
    @Default(false) bool isLoading,
    @Default(false) bool isReadyData,
    @Default([]) List<OsimenItemData> osimenItems,
  }) = _OsimenStateData;
}

@freezed
class TempOsimenItemData with _$TempOsimenItemData {
  // 入力中のtodoの状態を保持するクラス
  factory TempOsimenItemData({
    @Default('') String name,
    @Default('') String twitter,
    @Default('') String instagram,
    @Default('') String facebook,
    @Default('') String tiktok,
    @Default('') String youtube,
    @Default('') String blog,
  }) = _TempOsimenItemData;
}
