import 'package:flutter/material.dart';
import 'package:inspection_control/controllers/db_controller.dart';
import 'package:inspection_control/source/database.dart';
import 'package:provider/provider.dart';

class InspecaoDetailPage extends StatefulWidget {
  const InspecaoDetailPage({super.key});

  @override
  State<InspecaoDetailPage> createState() => __InspecaoDetailPageState();
}

class __InspecaoDetailPageState extends State<InspecaoDetailPage> {
  final database = AppDatabase();
  late String message;
  final _formKey = GlobalKey<FormState>();
  final _idController = TextEditingController();
  final _clienteController = TextEditingController();
  final _dataController = TextEditingController();
  final _parecerController = TextEditingController();
  final bool teste = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final database = AppDatabase();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Nova Inspeção'),
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
                  'Cliente',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _idController,
                        decoration: const InputDecoration(
                          labelText: 'Id',
                          border: OutlineInputBorder(),
                          enabled: false,
                        ),
                      ),
                    ),
                    const SizedBox(
                        width:
                            8),
                    ElevatedButton(
                      onPressed: () async {
                        final retorno = await Navigator.pushNamed(
                            context, "/clienteList",
                            arguments: 'BUSCA');
                        if (retorno != null &&
                            retorno is Map<String, dynamic>) {
                          setState(() {
                            _idController.text = retorno['id'].toString();
                            _clienteController.text = retorno['nome'];
                          });
                        }
                      },
                      child: const Icon(Icons.search),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _clienteController,
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                    border: OutlineInputBorder(),
                  ),
                  enabled: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o cliente';
                    }
                    return null;
                  },
                  onTap: () async {
                    final retorno = await Navigator.pushNamed(
                        context, "/clienteList",
                        arguments: 'BUSCA');
                    if (retorno != null && retorno is Map<String, dynamic>) {
                      setState(() {
                        _idController.text = retorno['id'].toString();
                        _clienteController.text = retorno['nome'];
                      });
                    }
                  },
                ),
                const SizedBox(height: 16),
                const Text(
                  'Inspeção',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _dataController,
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    labelText: 'Data',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe a data';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: _parecerController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Parecer Técnico',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Informe o parecer técnico';
                    }
                    return null;
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            await database
                .into(database.inspecao)
                .insert(InspecaoCompanion.insert(
                  idCliente: int.parse(_idController.text),
                  data: _dataController.text,
                  parecer: _parecerController.text,
                ));

            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Inspeção salva com sucesso!!')),
            );

            Provider.of<InspecaoNotifier>(context, listen: false).buscarDados();
            Navigator.pop(context);
          }
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
