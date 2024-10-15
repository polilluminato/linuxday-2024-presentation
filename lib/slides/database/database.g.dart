// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $AddressBookTable extends AddressBook
    with TableInfo<$AddressBookTable, AddressBookData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AddressBookTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _surnameMeta =
      const VerificationMeta('surname');
  @override
  late final GeneratedColumn<String> surname = GeneratedColumn<String>(
      'surname', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, surname, phone, email, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'address_book';
  @override
  VerificationContext validateIntegrity(Insertable<AddressBookData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('surname')) {
      context.handle(_surnameMeta,
          surname.isAcceptableOrUnknown(data['surname']!, _surnameMeta));
    } else if (isInserting) {
      context.missing(_surnameMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AddressBookData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AddressBookData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      surname: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}surname'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
    );
  }

  @override
  $AddressBookTable createAlias(String alias) {
    return $AddressBookTable(attachedDatabase, alias);
  }
}

class AddressBookData extends DataClass implements Insertable<AddressBookData> {
  final int id;
  final String name;
  final String surname;
  final String phone;
  final String email;
  final DateTime? createdAt;
  const AddressBookData(
      {required this.id,
      required this.name,
      required this.surname,
      required this.phone,
      required this.email,
      this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['surname'] = Variable<String>(surname);
    map['phone'] = Variable<String>(phone);
    map['email'] = Variable<String>(email);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    return map;
  }

  AddressBookCompanion toCompanion(bool nullToAbsent) {
    return AddressBookCompanion(
      id: Value(id),
      name: Value(name),
      surname: Value(surname),
      phone: Value(phone),
      email: Value(email),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
    );
  }

  factory AddressBookData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AddressBookData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      surname: serializer.fromJson<String>(json['surname']),
      phone: serializer.fromJson<String>(json['phone']),
      email: serializer.fromJson<String>(json['email']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'surname': serializer.toJson<String>(surname),
      'phone': serializer.toJson<String>(phone),
      'email': serializer.toJson<String>(email),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
    };
  }

  AddressBookData copyWith(
          {int? id,
          String? name,
          String? surname,
          String? phone,
          String? email,
          Value<DateTime?> createdAt = const Value.absent()}) =>
      AddressBookData(
        id: id ?? this.id,
        name: name ?? this.name,
        surname: surname ?? this.surname,
        phone: phone ?? this.phone,
        email: email ?? this.email,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
      );
  AddressBookData copyWithCompanion(AddressBookCompanion data) {
    return AddressBookData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      surname: data.surname.present ? data.surname.value : this.surname,
      phone: data.phone.present ? data.phone.value : this.phone,
      email: data.email.present ? data.email.value : this.email,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AddressBookData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('surname: $surname, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, surname, phone, email, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AddressBookData &&
          other.id == this.id &&
          other.name == this.name &&
          other.surname == this.surname &&
          other.phone == this.phone &&
          other.email == this.email &&
          other.createdAt == this.createdAt);
}

class AddressBookCompanion extends UpdateCompanion<AddressBookData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> surname;
  final Value<String> phone;
  final Value<String> email;
  final Value<DateTime?> createdAt;
  const AddressBookCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.surname = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  AddressBookCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String surname,
    required String phone,
    required String email,
    this.createdAt = const Value.absent(),
  })  : name = Value(name),
        surname = Value(surname),
        phone = Value(phone),
        email = Value(email);
  static Insertable<AddressBookData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? surname,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (surname != null) 'surname': surname,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  AddressBookCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? surname,
      Value<String>? phone,
      Value<String>? email,
      Value<DateTime?>? createdAt}) {
    return AddressBookCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      surname: surname ?? this.surname,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      createdAt: createdAt ?? this.createdAt,
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
    if (surname.present) {
      map['surname'] = Variable<String>(surname.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AddressBookCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('surname: $surname, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $AddressBookTable addressBook = $AddressBookTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [addressBook];
}

typedef $$AddressBookTableCreateCompanionBuilder = AddressBookCompanion
    Function({
  Value<int> id,
  required String name,
  required String surname,
  required String phone,
  required String email,
  Value<DateTime?> createdAt,
});
typedef $$AddressBookTableUpdateCompanionBuilder = AddressBookCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> surname,
  Value<String> phone,
  Value<String> email,
  Value<DateTime?> createdAt,
});

class $$AddressBookTableFilterComposer
    extends Composer<_$AppDatabase, $AddressBookTable> {
  $$AddressBookTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get surname => $composableBuilder(
      column: $table.surname, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$AddressBookTableOrderingComposer
    extends Composer<_$AppDatabase, $AddressBookTable> {
  $$AddressBookTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get surname => $composableBuilder(
      column: $table.surname, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get phone => $composableBuilder(
      column: $table.phone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$AddressBookTableAnnotationComposer
    extends Composer<_$AppDatabase, $AddressBookTable> {
  $$AddressBookTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get surname =>
      $composableBuilder(column: $table.surname, builder: (column) => column);

  GeneratedColumn<String> get phone =>
      $composableBuilder(column: $table.phone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$AddressBookTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AddressBookTable,
    AddressBookData,
    $$AddressBookTableFilterComposer,
    $$AddressBookTableOrderingComposer,
    $$AddressBookTableAnnotationComposer,
    $$AddressBookTableCreateCompanionBuilder,
    $$AddressBookTableUpdateCompanionBuilder,
    (
      AddressBookData,
      BaseReferences<_$AppDatabase, $AddressBookTable, AddressBookData>
    ),
    AddressBookData,
    PrefetchHooks Function()> {
  $$AddressBookTableTableManager(_$AppDatabase db, $AddressBookTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AddressBookTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AddressBookTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AddressBookTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> surname = const Value.absent(),
            Value<String> phone = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              AddressBookCompanion(
            id: id,
            name: name,
            surname: surname,
            phone: phone,
            email: email,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required String surname,
            required String phone,
            required String email,
            Value<DateTime?> createdAt = const Value.absent(),
          }) =>
              AddressBookCompanion.insert(
            id: id,
            name: name,
            surname: surname,
            phone: phone,
            email: email,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AddressBookTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AddressBookTable,
    AddressBookData,
    $$AddressBookTableFilterComposer,
    $$AddressBookTableOrderingComposer,
    $$AddressBookTableAnnotationComposer,
    $$AddressBookTableCreateCompanionBuilder,
    $$AddressBookTableUpdateCompanionBuilder,
    (
      AddressBookData,
      BaseReferences<_$AppDatabase, $AddressBookTable, AddressBookData>
    ),
    AddressBookData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$AddressBookTableTableManager get addressBook =>
      $$AddressBookTableTableManager(_db, _db.addressBook);
}
