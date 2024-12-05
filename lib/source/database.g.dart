// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $ClienteTable extends Cliente with TableInfo<$ClienteTable, ClienteData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'nome', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cpfMeta = const VerificationMeta('cpf');
  @override
  late final GeneratedColumn<String> cpf = GeneratedColumn<String>(
      'cpf', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _telefoneMeta =
      const VerificationMeta('telefone');
  @override
  late final GeneratedColumn<String> telefone = GeneratedColumn<String>(
      'telefone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _ruaMeta = const VerificationMeta('rua');
  @override
  late final GeneratedColumn<String> rua = GeneratedColumn<String>(
      'rua', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cepMeta = const VerificationMeta('cep');
  @override
  late final GeneratedColumn<String> cep = GeneratedColumn<String>(
      'cep', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _cidadeMeta = const VerificationMeta('cidade');
  @override
  late final GeneratedColumn<String> cidade = GeneratedColumn<String>(
      'cidade', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _estadoMeta = const VerificationMeta('estado');
  @override
  late final GeneratedColumn<String> estado = GeneratedColumn<String>(
      'estado', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, nome, cpf, telefone, email, rua, cep, cidade, estado];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'cliente';
  @override
  VerificationContext validateIntegrity(Insertable<ClienteData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('nome')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('cpf')) {
      context.handle(
          _cpfMeta, cpf.isAcceptableOrUnknown(data['cpf']!, _cpfMeta));
    } else if (isInserting) {
      context.missing(_cpfMeta);
    }
    if (data.containsKey('telefone')) {
      context.handle(_telefoneMeta,
          telefone.isAcceptableOrUnknown(data['telefone']!, _telefoneMeta));
    } else if (isInserting) {
      context.missing(_telefoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('rua')) {
      context.handle(
          _ruaMeta, rua.isAcceptableOrUnknown(data['rua']!, _ruaMeta));
    } else if (isInserting) {
      context.missing(_ruaMeta);
    }
    if (data.containsKey('cep')) {
      context.handle(
          _cepMeta, cep.isAcceptableOrUnknown(data['cep']!, _cepMeta));
    } else if (isInserting) {
      context.missing(_cepMeta);
    }
    if (data.containsKey('cidade')) {
      context.handle(_cidadeMeta,
          cidade.isAcceptableOrUnknown(data['cidade']!, _cidadeMeta));
    } else if (isInserting) {
      context.missing(_cidadeMeta);
    }
    if (data.containsKey('estado')) {
      context.handle(_estadoMeta,
          estado.isAcceptableOrUnknown(data['estado']!, _estadoMeta));
    } else if (isInserting) {
      context.missing(_estadoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClienteData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}nome'])!,
      cpf: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cpf'])!,
      telefone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}telefone'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      rua: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}rua'])!,
      cep: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cep'])!,
      cidade: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cidade'])!,
      estado: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}estado'])!,
    );
  }

  @override
  $ClienteTable createAlias(String alias) {
    return $ClienteTable(attachedDatabase, alias);
  }
}

class ClienteData extends DataClass implements Insertable<ClienteData> {
  final int id;
  final String nome;
  final String cpf;
  final String telefone;
  final String email;
  final String rua;
  final String cep;
  final String cidade;
  final String estado;
  const ClienteData(
      {required this.id,
      required this.nome,
      required this.cpf,
      required this.telefone,
      required this.email,
      required this.rua,
      required this.cep,
      required this.cidade,
      required this.estado});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['nome'] = Variable<String>(nome);
    map['cpf'] = Variable<String>(cpf);
    map['telefone'] = Variable<String>(telefone);
    map['email'] = Variable<String>(email);
    map['rua'] = Variable<String>(rua);
    map['cep'] = Variable<String>(cep);
    map['cidade'] = Variable<String>(cidade);
    map['estado'] = Variable<String>(estado);
    return map;
  }

  ClienteCompanion toCompanion(bool nullToAbsent) {
    return ClienteCompanion(
      id: Value(id),
      nome: Value(nome),
      cpf: Value(cpf),
      telefone: Value(telefone),
      email: Value(email),
      rua: Value(rua),
      cep: Value(cep),
      cidade: Value(cidade),
      estado: Value(estado),
    );
  }

  factory ClienteData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClienteData(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String>(json['nome']),
      cpf: serializer.fromJson<String>(json['cpf']),
      telefone: serializer.fromJson<String>(json['telefone']),
      email: serializer.fromJson<String>(json['email']),
      rua: serializer.fromJson<String>(json['rua']),
      cep: serializer.fromJson<String>(json['cep']),
      cidade: serializer.fromJson<String>(json['cidade']),
      estado: serializer.fromJson<String>(json['estado']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String>(nome),
      'cpf': serializer.toJson<String>(cpf),
      'telefone': serializer.toJson<String>(telefone),
      'email': serializer.toJson<String>(email),
      'rua': serializer.toJson<String>(rua),
      'cep': serializer.toJson<String>(cep),
      'cidade': serializer.toJson<String>(cidade),
      'estado': serializer.toJson<String>(estado),
    };
  }

  ClienteData copyWith(
          {int? id,
          String? nome,
          String? cpf,
          String? telefone,
          String? email,
          String? rua,
          String? cep,
          String? cidade,
          String? estado}) =>
      ClienteData(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        cpf: cpf ?? this.cpf,
        telefone: telefone ?? this.telefone,
        email: email ?? this.email,
        rua: rua ?? this.rua,
        cep: cep ?? this.cep,
        cidade: cidade ?? this.cidade,
        estado: estado ?? this.estado,
      );
  ClienteData copyWithCompanion(ClienteCompanion data) {
    return ClienteData(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      cpf: data.cpf.present ? data.cpf.value : this.cpf,
      telefone: data.telefone.present ? data.telefone.value : this.telefone,
      email: data.email.present ? data.email.value : this.email,
      rua: data.rua.present ? data.rua.value : this.rua,
      cep: data.cep.present ? data.cep.value : this.cep,
      cidade: data.cidade.present ? data.cidade.value : this.cidade,
      estado: data.estado.present ? data.estado.value : this.estado,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ClienteData(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('cpf: $cpf, ')
          ..write('telefone: $telefone, ')
          ..write('email: $email, ')
          ..write('rua: $rua, ')
          ..write('cep: $cep, ')
          ..write('cidade: $cidade, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, nome, cpf, telefone, email, rua, cep, cidade, estado);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClienteData &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.cpf == this.cpf &&
          other.telefone == this.telefone &&
          other.email == this.email &&
          other.rua == this.rua &&
          other.cep == this.cep &&
          other.cidade == this.cidade &&
          other.estado == this.estado);
}

class ClienteCompanion extends UpdateCompanion<ClienteData> {
  final Value<int> id;
  final Value<String> nome;
  final Value<String> cpf;
  final Value<String> telefone;
  final Value<String> email;
  final Value<String> rua;
  final Value<String> cep;
  final Value<String> cidade;
  final Value<String> estado;
  const ClienteCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.cpf = const Value.absent(),
    this.telefone = const Value.absent(),
    this.email = const Value.absent(),
    this.rua = const Value.absent(),
    this.cep = const Value.absent(),
    this.cidade = const Value.absent(),
    this.estado = const Value.absent(),
  });
  ClienteCompanion.insert({
    this.id = const Value.absent(),
    required String nome,
    required String cpf,
    required String telefone,
    required String email,
    required String rua,
    required String cep,
    required String cidade,
    required String estado,
  })  : nome = Value(nome),
        cpf = Value(cpf),
        telefone = Value(telefone),
        email = Value(email),
        rua = Value(rua),
        cep = Value(cep),
        cidade = Value(cidade),
        estado = Value(estado);
  static Insertable<ClienteData> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? cpf,
    Expression<String>? telefone,
    Expression<String>? email,
    Expression<String>? rua,
    Expression<String>? cep,
    Expression<String>? cidade,
    Expression<String>? estado,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (nome != null) 'nome': nome,
      if (cpf != null) 'cpf': cpf,
      if (telefone != null) 'telefone': telefone,
      if (email != null) 'email': email,
      if (rua != null) 'rua': rua,
      if (cep != null) 'cep': cep,
      if (cidade != null) 'cidade': cidade,
      if (estado != null) 'estado': estado,
    });
  }

  ClienteCompanion copyWith(
      {Value<int>? id,
      Value<String>? nome,
      Value<String>? cpf,
      Value<String>? telefone,
      Value<String>? email,
      Value<String>? rua,
      Value<String>? cep,
      Value<String>? cidade,
      Value<String>? estado}) {
    return ClienteCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      cpf: cpf ?? this.cpf,
      telefone: telefone ?? this.telefone,
      email: email ?? this.email,
      rua: rua ?? this.rua,
      cep: cep ?? this.cep,
      cidade: cidade ?? this.cidade,
      estado: estado ?? this.estado,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (cpf.present) {
      map['cpf'] = Variable<String>(cpf.value);
    }
    if (telefone.present) {
      map['telefone'] = Variable<String>(telefone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (rua.present) {
      map['rua'] = Variable<String>(rua.value);
    }
    if (cep.present) {
      map['cep'] = Variable<String>(cep.value);
    }
    if (cidade.present) {
      map['cidade'] = Variable<String>(cidade.value);
    }
    if (estado.present) {
      map['estado'] = Variable<String>(estado.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClienteCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('cpf: $cpf, ')
          ..write('telefone: $telefone, ')
          ..write('email: $email, ')
          ..write('rua: $rua, ')
          ..write('cep: $cep, ')
          ..write('cidade: $cidade, ')
          ..write('estado: $estado')
          ..write(')'))
        .toString();
  }
}

class $InspecaoTable extends Inspecao
    with TableInfo<$InspecaoTable, InspecaoData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InspecaoTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _idClienteMeta =
      const VerificationMeta('idCliente');
  @override
  late final GeneratedColumn<int> idCliente = GeneratedColumn<int>(
      'id_cliente', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<String> data = GeneratedColumn<String>(
      'data', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _parecerMeta =
      const VerificationMeta('parecer');
  @override
  late final GeneratedColumn<String> parecer = GeneratedColumn<String>(
      'parecer', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, idCliente, data, parecer];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'inspecao';
  @override
  VerificationContext validateIntegrity(Insertable<InspecaoData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('id_cliente')) {
      context.handle(_idClienteMeta,
          idCliente.isAcceptableOrUnknown(data['id_cliente']!, _idClienteMeta));
    } else if (isInserting) {
      context.missing(_idClienteMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data']!, _dataMeta));
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('parecer')) {
      context.handle(_parecerMeta,
          parecer.isAcceptableOrUnknown(data['parecer']!, _parecerMeta));
    } else if (isInserting) {
      context.missing(_parecerMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  InspecaoData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return InspecaoData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      idCliente: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id_cliente'])!,
      data: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}data'])!,
      parecer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}parecer'])!,
    );
  }

  @override
  $InspecaoTable createAlias(String alias) {
    return $InspecaoTable(attachedDatabase, alias);
  }
}

class InspecaoData extends DataClass implements Insertable<InspecaoData> {
  final int id;
  final int idCliente;
  final String data;
  final String parecer;
  const InspecaoData(
      {required this.id,
      required this.idCliente,
      required this.data,
      required this.parecer});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['id_cliente'] = Variable<int>(idCliente);
    map['data'] = Variable<String>(data);
    map['parecer'] = Variable<String>(parecer);
    return map;
  }

  InspecaoCompanion toCompanion(bool nullToAbsent) {
    return InspecaoCompanion(
      id: Value(id),
      idCliente: Value(idCliente),
      data: Value(data),
      parecer: Value(parecer),
    );
  }

  factory InspecaoData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return InspecaoData(
      id: serializer.fromJson<int>(json['id']),
      idCliente: serializer.fromJson<int>(json['idCliente']),
      data: serializer.fromJson<String>(json['data']),
      parecer: serializer.fromJson<String>(json['parecer']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'idCliente': serializer.toJson<int>(idCliente),
      'data': serializer.toJson<String>(data),
      'parecer': serializer.toJson<String>(parecer),
    };
  }

  InspecaoData copyWith(
          {int? id, int? idCliente, String? data, String? parecer}) =>
      InspecaoData(
        id: id ?? this.id,
        idCliente: idCliente ?? this.idCliente,
        data: data ?? this.data,
        parecer: parecer ?? this.parecer,
      );
  InspecaoData copyWithCompanion(InspecaoCompanion data) {
    return InspecaoData(
      id: data.id.present ? data.id.value : this.id,
      idCliente: data.idCliente.present ? data.idCliente.value : this.idCliente,
      data: data.data.present ? data.data.value : this.data,
      parecer: data.parecer.present ? data.parecer.value : this.parecer,
    );
  }

  @override
  String toString() {
    return (StringBuffer('InspecaoData(')
          ..write('id: $id, ')
          ..write('idCliente: $idCliente, ')
          ..write('data: $data, ')
          ..write('parecer: $parecer')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idCliente, data, parecer);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is InspecaoData &&
          other.id == this.id &&
          other.idCliente == this.idCliente &&
          other.data == this.data &&
          other.parecer == this.parecer);
}

class InspecaoCompanion extends UpdateCompanion<InspecaoData> {
  final Value<int> id;
  final Value<int> idCliente;
  final Value<String> data;
  final Value<String> parecer;
  const InspecaoCompanion({
    this.id = const Value.absent(),
    this.idCliente = const Value.absent(),
    this.data = const Value.absent(),
    this.parecer = const Value.absent(),
  });
  InspecaoCompanion.insert({
    this.id = const Value.absent(),
    required int idCliente,
    required String data,
    required String parecer,
  })  : idCliente = Value(idCliente),
        data = Value(data),
        parecer = Value(parecer);
  static Insertable<InspecaoData> custom({
    Expression<int>? id,
    Expression<int>? idCliente,
    Expression<String>? data,
    Expression<String>? parecer,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (idCliente != null) 'id_cliente': idCliente,
      if (data != null) 'data': data,
      if (parecer != null) 'parecer': parecer,
    });
  }

  InspecaoCompanion copyWith(
      {Value<int>? id,
      Value<int>? idCliente,
      Value<String>? data,
      Value<String>? parecer}) {
    return InspecaoCompanion(
      id: id ?? this.id,
      idCliente: idCliente ?? this.idCliente,
      data: data ?? this.data,
      parecer: parecer ?? this.parecer,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (idCliente.present) {
      map['id_cliente'] = Variable<int>(idCliente.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(data.value);
    }
    if (parecer.present) {
      map['parecer'] = Variable<String>(parecer.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InspecaoCompanion(')
          ..write('id: $id, ')
          ..write('idCliente: $idCliente, ')
          ..write('data: $data, ')
          ..write('parecer: $parecer')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $ClienteTable cliente = $ClienteTable(this);
  late final $InspecaoTable inspecao = $InspecaoTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [cliente, inspecao];
}

typedef $$ClienteTableCreateCompanionBuilder = ClienteCompanion Function({
  Value<int> id,
  required String nome,
  required String cpf,
  required String telefone,
  required String email,
  required String rua,
  required String cep,
  required String cidade,
  required String estado,
});
typedef $$ClienteTableUpdateCompanionBuilder = ClienteCompanion Function({
  Value<int> id,
  Value<String> nome,
  Value<String> cpf,
  Value<String> telefone,
  Value<String> email,
  Value<String> rua,
  Value<String> cep,
  Value<String> cidade,
  Value<String> estado,
});

class $$ClienteTableFilterComposer
    extends Composer<_$AppDatabase, $ClienteTable> {
  $$ClienteTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get telefone => $composableBuilder(
      column: $table.telefone, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get rua => $composableBuilder(
      column: $table.rua, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cep => $composableBuilder(
      column: $table.cep, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cidade => $composableBuilder(
      column: $table.cidade, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get estado => $composableBuilder(
      column: $table.estado, builder: (column) => ColumnFilters(column));
}

class $$ClienteTableOrderingComposer
    extends Composer<_$AppDatabase, $ClienteTable> {
  $$ClienteTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nome => $composableBuilder(
      column: $table.nome, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cpf => $composableBuilder(
      column: $table.cpf, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get telefone => $composableBuilder(
      column: $table.telefone, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get rua => $composableBuilder(
      column: $table.rua, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cep => $composableBuilder(
      column: $table.cep, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cidade => $composableBuilder(
      column: $table.cidade, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get estado => $composableBuilder(
      column: $table.estado, builder: (column) => ColumnOrderings(column));
}

class $$ClienteTableAnnotationComposer
    extends Composer<_$AppDatabase, $ClienteTable> {
  $$ClienteTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get cpf =>
      $composableBuilder(column: $table.cpf, builder: (column) => column);

  GeneratedColumn<String> get telefone =>
      $composableBuilder(column: $table.telefone, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get rua =>
      $composableBuilder(column: $table.rua, builder: (column) => column);

  GeneratedColumn<String> get cep =>
      $composableBuilder(column: $table.cep, builder: (column) => column);

  GeneratedColumn<String> get cidade =>
      $composableBuilder(column: $table.cidade, builder: (column) => column);

  GeneratedColumn<String> get estado =>
      $composableBuilder(column: $table.estado, builder: (column) => column);
}

class $$ClienteTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ClienteTable,
    ClienteData,
    $$ClienteTableFilterComposer,
    $$ClienteTableOrderingComposer,
    $$ClienteTableAnnotationComposer,
    $$ClienteTableCreateCompanionBuilder,
    $$ClienteTableUpdateCompanionBuilder,
    (ClienteData, BaseReferences<_$AppDatabase, $ClienteTable, ClienteData>),
    ClienteData,
    PrefetchHooks Function()> {
  $$ClienteTableTableManager(_$AppDatabase db, $ClienteTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ClienteTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ClienteTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ClienteTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<String> cpf = const Value.absent(),
            Value<String> telefone = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> rua = const Value.absent(),
            Value<String> cep = const Value.absent(),
            Value<String> cidade = const Value.absent(),
            Value<String> estado = const Value.absent(),
          }) =>
              ClienteCompanion(
            id: id,
            nome: nome,
            cpf: cpf,
            telefone: telefone,
            email: email,
            rua: rua,
            cep: cep,
            cidade: cidade,
            estado: estado,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String nome,
            required String cpf,
            required String telefone,
            required String email,
            required String rua,
            required String cep,
            required String cidade,
            required String estado,
          }) =>
              ClienteCompanion.insert(
            id: id,
            nome: nome,
            cpf: cpf,
            telefone: telefone,
            email: email,
            rua: rua,
            cep: cep,
            cidade: cidade,
            estado: estado,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ClienteTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ClienteTable,
    ClienteData,
    $$ClienteTableFilterComposer,
    $$ClienteTableOrderingComposer,
    $$ClienteTableAnnotationComposer,
    $$ClienteTableCreateCompanionBuilder,
    $$ClienteTableUpdateCompanionBuilder,
    (ClienteData, BaseReferences<_$AppDatabase, $ClienteTable, ClienteData>),
    ClienteData,
    PrefetchHooks Function()>;
typedef $$InspecaoTableCreateCompanionBuilder = InspecaoCompanion Function({
  Value<int> id,
  required int idCliente,
  required String data,
  required String parecer,
});
typedef $$InspecaoTableUpdateCompanionBuilder = InspecaoCompanion Function({
  Value<int> id,
  Value<int> idCliente,
  Value<String> data,
  Value<String> parecer,
});

class $$InspecaoTableFilterComposer
    extends Composer<_$AppDatabase, $InspecaoTable> {
  $$InspecaoTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get idCliente => $composableBuilder(
      column: $table.idCliente, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get parecer => $composableBuilder(
      column: $table.parecer, builder: (column) => ColumnFilters(column));
}

class $$InspecaoTableOrderingComposer
    extends Composer<_$AppDatabase, $InspecaoTable> {
  $$InspecaoTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get idCliente => $composableBuilder(
      column: $table.idCliente, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get data => $composableBuilder(
      column: $table.data, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get parecer => $composableBuilder(
      column: $table.parecer, builder: (column) => ColumnOrderings(column));
}

class $$InspecaoTableAnnotationComposer
    extends Composer<_$AppDatabase, $InspecaoTable> {
  $$InspecaoTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get idCliente =>
      $composableBuilder(column: $table.idCliente, builder: (column) => column);

  GeneratedColumn<String> get data =>
      $composableBuilder(column: $table.data, builder: (column) => column);

  GeneratedColumn<String> get parecer =>
      $composableBuilder(column: $table.parecer, builder: (column) => column);
}

class $$InspecaoTableTableManager extends RootTableManager<
    _$AppDatabase,
    $InspecaoTable,
    InspecaoData,
    $$InspecaoTableFilterComposer,
    $$InspecaoTableOrderingComposer,
    $$InspecaoTableAnnotationComposer,
    $$InspecaoTableCreateCompanionBuilder,
    $$InspecaoTableUpdateCompanionBuilder,
    (InspecaoData, BaseReferences<_$AppDatabase, $InspecaoTable, InspecaoData>),
    InspecaoData,
    PrefetchHooks Function()> {
  $$InspecaoTableTableManager(_$AppDatabase db, $InspecaoTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$InspecaoTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$InspecaoTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$InspecaoTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> idCliente = const Value.absent(),
            Value<String> data = const Value.absent(),
            Value<String> parecer = const Value.absent(),
          }) =>
              InspecaoCompanion(
            id: id,
            idCliente: idCliente,
            data: data,
            parecer: parecer,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int idCliente,
            required String data,
            required String parecer,
          }) =>
              InspecaoCompanion.insert(
            id: id,
            idCliente: idCliente,
            data: data,
            parecer: parecer,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$InspecaoTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $InspecaoTable,
    InspecaoData,
    $$InspecaoTableFilterComposer,
    $$InspecaoTableOrderingComposer,
    $$InspecaoTableAnnotationComposer,
    $$InspecaoTableCreateCompanionBuilder,
    $$InspecaoTableUpdateCompanionBuilder,
    (InspecaoData, BaseReferences<_$AppDatabase, $InspecaoTable, InspecaoData>),
    InspecaoData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$ClienteTableTableManager get cliente =>
      $$ClienteTableTableManager(_db, _db.cliente);
  $$InspecaoTableTableManager get inspecao =>
      $$InspecaoTableTableManager(_db, _db.inspecao);
}
