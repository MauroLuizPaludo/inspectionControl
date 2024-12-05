import 'package:flutter/material.dart';
import 'package:inspection_control/controllers/db_controller.dart';
import 'package:provider/provider.dart';

class InspecaoListPage extends StatefulWidget {
   const InspecaoListPage({super.key});

  @override
  State<InspecaoListPage> createState() => __InspecaoListPageState();
}

class __InspecaoListPageState extends State<InspecaoListPage> {
  @override
  void initState() {
    super.initState();
    Provider.of<InspecaoNotifier>(context, listen: false).buscarDados();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Inspeções")),
      body: Column(
        children: [
          Expanded(
            child: Consumer<InspecaoNotifier>(
              builder: (context, notifier, child) {
                if (notifier.inspecoes.isEmpty) {
                  return const Center(
                      child: Text("Nenhum inspeção encontrada."));
                }
                return ListView.builder(
                  itemCount: notifier.inspecoes.length,
                  itemBuilder: (context, index) {
                    final inspecao = notifier.inspecoes[index];
                    return ListTile(
                      title: Text(inspecao.data),
                      subtitle: Text(inspecao.parecer),
                      onTap: () async {
                        await Navigator.pushNamed(context, "/inspecaoDetail");
                      },
                      trailing: IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () => notifier.removerInspecao(inspecao),
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
          await Navigator.pushNamed(context, "/inspecaoDetail");
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
