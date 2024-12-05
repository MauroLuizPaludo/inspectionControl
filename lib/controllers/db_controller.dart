import 'package:flutter/material.dart';
import 'package:inspection_control/source/database.dart';

class ClienteNotifier extends ChangeNotifier {
  List<ClienteData> _clientes = [];
  List<ClienteData> get clientes => _clientes;

  final database = AppDatabase();

  Future<void> buscarDados() async {
    _clientes = await database.select(database.cliente).get();
    notifyListeners();
  }

  Future<void> removerCliente(ClienteData cliente) async {
    await database.delete(database.cliente).delete(cliente);
    buscarDados();
  }
}

class InspecaoNotifier extends ChangeNotifier {
  List<InspecaoData> _inspecoes = [];
  List<InspecaoData> get inspecoes => _inspecoes;

  final database = AppDatabase();

  Future<void> buscarDados() async {
    _inspecoes = await database.select(database.inspecao).get();
    notifyListeners();
  }

  Future<void> removerInspecao(InspecaoData inspecao) async {
    await database.delete(database.inspecao).delete(inspecao);
    buscarDados();
  }
}


