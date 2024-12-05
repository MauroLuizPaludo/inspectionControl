import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:inspection_control/client/rest_client.dart';
import 'package:inspection_control/controllers/db_controller.dart';
import 'package:inspection_control/model/endereco.dart' as model;
import 'package:inspection_control/source/database.dart';
import 'package:provider/provider.dart';

class ClientsDetailPage extends StatefulWidget {
  const ClientsDetailPage({super.key});

  @override
  State<ClientsDetailPage> createState() => __ClientsDetailPageState();
}

class __ClientsDetailPageState extends State<ClientsDetailPage> {
  final database = AppDatabase();
  final FocusNode _focusNodeCep = FocusNode();
  late String message;
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _cpfController = TextEditingController();
  final _telefoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _ruaController = TextEditingController();
  final _cepController = TextEditingController();
  final _cidadeController = TextEditingController();
  final _estadoController = TextEditingController();

  @override
  void initState() {
    super.initState();

    _focusNodeCep.addListener(() {
      if (!_focusNodeCep.hasFocus && _cepController.text.isNotEmpty) {
        _httpRequest(_cepController.text);
      }
    });
  }

  Future<void> _httpRequest(String cep) async {
    final dio = Dio();
    final client = RestClient(dio);

    model.Endereco endereco = await client.getEndereco(cep);

    _cidadeController.text = endereco.localidade ?? '';
    _estadoController.text = endereco.estado ?? '';
  }

  @override
  Widget build(BuildContext context) {
    message = ModalRoute.of(context)!.settings.arguments as String;

    final database = AppDatabase();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Cliente'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Dados Pessoais',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: _nomeController,
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o nome';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _cpfController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'CPF',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o CPF';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _telefoneController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Telefone',
                    border: OutlineInputBorder(),
                  ),
                  //  keyboardType: nume,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o telefone';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o email';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                const Text(
                  'Endereço',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextFormField(
                  controller: _cepController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'CEP',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o CEP';
                    }
                    return null;
                  },
                  focusNode: _focusNodeCep,
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _ruaController,
                  decoration: const InputDecoration(
                    labelText: 'Rua',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe a Rua';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _cidadeController,
                  decoration: const InputDecoration(
                    labelText: 'Cidade',
                    border: OutlineInputBorder(),
                  ),
                  enabled: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe a Cidade';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _estadoController,
                  decoration: const InputDecoration(
                    labelText: 'Estado',
                    border: OutlineInputBorder(),
                  ),
                  enabled: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o Estado';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            await database
                .into(database.cliente)
                .insert(ClienteCompanion.insert(
                  nome: _nomeController.text,
                  cpf: _cpfController.text,
                  telefone: _telefoneController.text,
                  email: _emailController.text,
                  rua: _ruaController.text,
                  cep: _cepController.text,
                  cidade: _cidadeController.text,
                  estado: _estadoController.text,
                ));

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(
                      'Cliente ${_nomeController.text} salvo com sucesso!!')),
            );

            Provider.of<ClienteNotifier>(context, listen: false).buscarDados();
            Navigator.pop(context);
          }
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
