import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'database.g.dart';

class Cliente extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get nome => text()();
  TextColumn get cpf => text()();
  TextColumn get telefone => text()();
  TextColumn get email => text()();
  TextColumn get rua => text()();
  TextColumn get cep => text()();
  TextColumn get cidade => text()();
  TextColumn get estado => text()();
}

class Inspecao extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get idCliente => integer()();
  TextColumn get data => text()();
  TextColumn get parecer => text()();
}

@DriftDatabase(tables: [Cliente, Inspecao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(name: 'vistoriadatabase');
  }
}
