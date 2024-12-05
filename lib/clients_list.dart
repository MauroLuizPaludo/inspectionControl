import 'package:flutter/material.dart';
import 'package:inspection_control/controllers/db_controller.dart';
import 'package:provider/provider.dart';

class ClientsListPage extends StatefulWidget {
  const ClientsListPage({super.key});

  @override
  State<ClientsListPage> createState() => __ClientsListPageState();
}

class __ClientsListPageState extends State<ClientsListPage> {
  late String tipoTela;
  static const tipoBusca = "BUSCA";

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)!.settings.arguments as String;
    tipoTela = args;
  }

  @override
  void initState() {
    super.initState();
    Provider.of<ClienteNotifier>(context, listen: false).buscarDados();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Clientes")),
      body: Column(
        children: [
          Expanded(
            child: Consumer<ClienteNotifier>(
              builder: (context, notifier, child) {
                if (notifier.clientes.isEmpty) {
                  return const Center(
                      child: Text("Nenhum cliente encontrado."));
                }
                return ListView.builder(
                  itemCount: notifier.clientes.length,
                  itemBuilder: (context, index) {
                    final cliente = notifier.clientes[index];
                    return ListTile(
                      title: Text(cliente.nome),
                      subtitle: Text(cliente.email),
                      onTap: () async {
                        tipoTela == tipoBusca
                            ? Navigator.pop(context,
                                {'id': cliente.id, 'nome': cliente.nome})
                            : await Navigator.pushNamed(
                                context, "/clienteDetail",
                                arguments: 'Cliente');
                      },
                      trailing: tipoTela == tipoBusca
                          ? null
                          : IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () => notifier.removerCliente(cliente),
                            ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.pushNamed(context, "/clienteDetail",
              arguments: 'Cliente');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
