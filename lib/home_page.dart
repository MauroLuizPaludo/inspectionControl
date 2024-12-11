import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inspeções - Campos de Semente"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/clienteList",
                      arguments: 'clientes');
                },
                icon: const Icon(Icons.person, size: 75),
                label: const Text("Clientes"),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, "/inspecaoList",
                      arguments: 'inspeções');
                },
                icon: const Icon(Icons.reviews, size: 75),
                label: const Text("Inspeções"),
              ),
              FutureBuilder<String>(
                future: getNetworkStatus(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text("Erro ao consultar conexão: ${snapshot.error}");
                  } else {
                    return Text("Status conexão: ${snapshot.data}",
                        style: TextStyle(
                            color: snapshot.data == 'CONECTADO'
                                ? const Color.fromARGB(255, 8, 236, 96)
                                : const Color.fromARGB(255, 230, 5, 16),
                            fontSize: 18));
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<String> getNetworkStatus() async {
    const platform = MethodChannel('com.utfpr.dev/networkStatus');
    String netWorkStatus;
    try {
      final resultado = await platform.invokeMethod('testarConexao', {});
      netWorkStatus = resultado;
    } on PlatformException catch (e) {
      netWorkStatus = "Falha ao verificar: '${e.message}'.";
    }
    return netWorkStatus;
  }
}
