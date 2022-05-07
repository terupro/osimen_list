// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class OsimenItemData extends DataClass implements Insertable<OsimenItemData> {
  final int id;
  final String name;
  final String twitter;
  final String instagram;
  final String facebook;
  final String tiktok;
  final String youtube;
  final String blog;
  OsimenItemData(
      {required this.id,
      required this.name,
      required this.twitter,
      required this.instagram,
      required this.facebook,
      required this.tiktok,
      required this.youtube,
      required this.blog});
  factory OsimenItemData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return OsimenItemData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}name'])!,
      twitter: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}twitter'])!,
      instagram: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}instagram'])!,
      facebook: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}facebook'])!,
      tiktok: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}tiktok'])!,
      youtube: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}youtube'])!,
      blog: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}blog'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['twitter'] = Variable<String>(twitter);
    map['instagram'] = Variable<String>(instagram);
    map['facebook'] = Variable<String>(facebook);
    map['tiktok'] = Variable<String>(tiktok);
    map['youtube'] = Variable<String>(youtube);
    map['blog'] = Variable<String>(blog);
    return map;
  }

  OsimenItemCompanion toCompanion(bool nullToAbsent) {
    return OsimenItemCompanion(
      id: Value(id),
      name: Value(name),
      twitter: Value(twitter),
      instagram: Value(instagram),
      facebook: Value(facebook),
      tiktok: Value(tiktok),
      youtube: Value(youtube),
      blog: Value(blog),
    );
  }

  factory OsimenItemData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OsimenItemData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      twitter: serializer.fromJson<String>(json['twitter']),
      instagram: serializer.fromJson<String>(json['instagram']),
      facebook: serializer.fromJson<String>(json['facebook']),
      tiktok: serializer.fromJson<String>(json['tiktok']),
      youtube: serializer.fromJson<String>(json['youtube']),
      blog: serializer.fromJson<String>(json['blog']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'twitter': serializer.toJson<String>(twitter),
      'instagram': serializer.toJson<String>(instagram),
      'facebook': serializer.toJson<String>(facebook),
      'tiktok': serializer.toJson<String>(tiktok),
      'youtube': serializer.toJson<String>(youtube),
      'blog': serializer.toJson<String>(blog),
    };
  }

  OsimenItemData copyWith(
          {int? id,
          String? name,
          String? twitter,
          String? instagram,
          String? facebook,
          String? tiktok,
          String? youtube,
          String? blog}) =>
      OsimenItemData(
        id: id ?? this.id,
        name: name ?? this.name,
        twitter: twitter ?? this.twitter,
        instagram: instagram ?? this.instagram,
        facebook: facebook ?? this.facebook,
        tiktok: tiktok ?? this.tiktok,
        youtube: youtube ?? this.youtube,
        blog: blog ?? this.blog,
      );
  @override
  String toString() {
    return (StringBuffer('OsimenItemData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('twitter: $twitter, ')
          ..write('instagram: $instagram, ')
          ..write('facebook: $facebook, ')
          ..write('tiktok: $tiktok, ')
          ..write('youtube: $youtube, ')
          ..write('blog: $blog')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, name, twitter, instagram, facebook, tiktok, youtube, blog);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OsimenItemData &&
          other.id == this.id &&
          other.name == this.name &&
          other.twitter == this.twitter &&
          other.instagram == this.instagram &&
          other.facebook == this.facebook &&
          other.tiktok == this.tiktok &&
          other.youtube == this.youtube &&
          other.blog == this.blog);
}

class OsimenItemCompanion extends UpdateCompanion<OsimenItemData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> twitter;
  final Value<String> instagram;
  final Value<String> facebook;
  final Value<String> tiktok;
  final Value<String> youtube;
  final Value<String> blog;
  const OsimenItemCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.twitter = const Value.absent(),
    this.instagram = const Value.absent(),
    this.facebook = const Value.absent(),
    this.tiktok = const Value.absent(),
    this.youtube = const Value.absent(),
    this.blog = const Value.absent(),
  });
  OsimenItemCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.twitter = const Value.absent(),
    this.instagram = const Value.absent(),
    this.facebook = const Value.absent(),
    this.tiktok = const Value.absent(),
    this.youtube = const Value.absent(),
    this.blog = const Value.absent(),
  });
  static Insertable<OsimenItemData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? twitter,
    Expression<String>? instagram,
    Expression<String>? facebook,
    Expression<String>? tiktok,
    Expression<String>? youtube,
    Expression<String>? blog,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (twitter != null) 'twitter': twitter,
      if (instagram != null) 'instagram': instagram,
      if (facebook != null) 'facebook': facebook,
      if (tiktok != null) 'tiktok': tiktok,
      if (youtube != null) 'youtube': youtube,
      if (blog != null) 'blog': blog,
    });
  }

  OsimenItemCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? twitter,
      Value<String>? instagram,
      Value<String>? facebook,
      Value<String>? tiktok,
      Value<String>? youtube,
      Value<String>? blog}) {
    return OsimenItemCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      twitter: twitter ?? this.twitter,
      instagram: instagram ?? this.instagram,
      facebook: facebook ?? this.facebook,
      tiktok: tiktok ?? this.tiktok,
      youtube: youtube ?? this.youtube,
      blog: blog ?? this.blog,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (twitter.present) {
      map['twitter'] = Variable<String>(twitter.value);
    }
    if (instagram.present) {
      map['instagram'] = Variable<String>(instagram.value);
    }
    if (facebook.present) {
      map['facebook'] = Variable<String>(facebook.value);
    }
    if (tiktok.present) {
      map['tiktok'] = Variable<String>(tiktok.value);
    }
    if (youtube.present) {
      map['youtube'] = Variable<String>(youtube.value);
    }
    if (blog.present) {
      map['blog'] = Variable<String>(blog.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OsimenItemCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('twitter: $twitter, ')
          ..write('instagram: $instagram, ')
          ..write('facebook: $facebook, ')
          ..write('tiktok: $tiktok, ')
          ..write('youtube: $youtube, ')
          ..write('blog: $blog')
          ..write(')'))
        .toString();
  }
}

class $OsimenItemTable extends OsimenItem
    with TableInfo<$OsimenItemTable, OsimenItemData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OsimenItemTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name =
      GeneratedColumn<String?>('name', aliasedName, false,
          additionalChecks: GeneratedColumn.checkTextLength(
            minTextLength: 1,
          ),
          type: const StringType(),
          requiredDuringInsert: false,
          defaultValue: const Constant(''));
  final VerificationMeta _twitterMeta = const VerificationMeta('twitter');
  @override
  late final GeneratedColumn<String?> twitter = GeneratedColumn<String?>(
      'twitter', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  final VerificationMeta _instagramMeta = const VerificationMeta('instagram');
  @override
  late final GeneratedColumn<String?> instagram = GeneratedColumn<String?>(
      'instagram', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  final VerificationMeta _facebookMeta = const VerificationMeta('facebook');
  @override
  late final GeneratedColumn<String?> facebook = GeneratedColumn<String?>(
      'facebook', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  final VerificationMeta _tiktokMeta = const VerificationMeta('tiktok');
  @override
  late final GeneratedColumn<String?> tiktok = GeneratedColumn<String?>(
      'tiktok', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  final VerificationMeta _youtubeMeta = const VerificationMeta('youtube');
  @override
  late final GeneratedColumn<String?> youtube = GeneratedColumn<String?>(
      'youtube', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  final VerificationMeta _blogMeta = const VerificationMeta('blog');
  @override
  late final GeneratedColumn<String?> blog = GeneratedColumn<String?>(
      'blog', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, twitter, instagram, facebook, tiktok, youtube, blog];
  @override
  String get aliasedName => _alias ?? 'osimen_item';
  @override
  String get actualTableName => 'osimen_item';
  @override
  VerificationContext validateIntegrity(Insertable<OsimenItemData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    if (data.containsKey('twitter')) {
      context.handle(_twitterMeta,
          twitter.isAcceptableOrUnknown(data['twitter']!, _twitterMeta));
    }
    if (data.containsKey('instagram')) {
      context.handle(_instagramMeta,
          instagram.isAcceptableOrUnknown(data['instagram']!, _instagramMeta));
    }
    if (data.containsKey('facebook')) {
      context.handle(_facebookMeta,
          facebook.isAcceptableOrUnknown(data['facebook']!, _facebookMeta));
    }
    if (data.containsKey('tiktok')) {
      context.handle(_tiktokMeta,
          tiktok.isAcceptableOrUnknown(data['tiktok']!, _tiktokMeta));
    }
    if (data.containsKey('youtube')) {
      context.handle(_youtubeMeta,
          youtube.isAcceptableOrUnknown(data['youtube']!, _youtubeMeta));
    }
    if (data.containsKey('blog')) {
      context.handle(
          _blogMeta, blog.isAcceptableOrUnknown(data['blog']!, _blogMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OsimenItemData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return OsimenItemData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $OsimenItemTable createAlias(String alias) {
    return $OsimenItemTable(attachedDatabase, alias);
  }
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $OsimenItemTable osimenItem = $OsimenItemTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [osimenItem];
}
