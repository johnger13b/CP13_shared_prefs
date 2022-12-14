import 'package:f_shared_prefs/ui/controllers/shared_prefs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharedPrefsPage extends StatefulWidget {
  const SharedPrefsPage({Key? key}) : super(key: key);

  @override
  State<SharedPrefsPage> createState() => _PageState();
}

class _PageState extends State<SharedPrefsPage> {
  late TextEditingController _controller;
  late SharedPrefsController controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    controller = Get.find();
    // TO DO: Usa el futuro <<usingDarkTheme>> del controlador para establecer el modo guardado de tema.
    controller.usingDarkTheme.then((value) {
      controller.themeMode = value ?? false;
      controller.changeThemeMode();
    });

    // TODO-HINT: En caso de que no haya una preferencia guardada (value == null), el valor por defecto es false.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preferences"),
      ),
      body: FutureBuilder<String?>(
          // TO DO: Futuro => <<storedName>> del controlador
          future: controller.storedName,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              final name = snapshot.data;
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            controller: _controller,
                            decoration: const InputDecoration(
                              hintText: "Nuevo nombre",
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 16.0,
                        ),
                        ElevatedButton(
                          onPressed: () async {
                            // TO DO: 1. Guarda el nombre usando el controlador
                            await controller.saveName(_controller.text);
                            // TO DO: 2. Actualiza el estado limpiando _controller.
                            setState(() {
                              _controller.clear();
                            });
                          },
                          child: const Text(
                            "Actualizar",
                          ),
                        )
                      ],
                    ),
                  ),
                  Text(
                    // Si name es diferente de nulo muestra "Hola! ________.", si no muestra "No hay nombre guardado."
                    name != null ? "Hola! $name." : "No hay nombre guardado.",
                    style: const TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // TO DO: 1. Invierte el valor de controller.themeMode
                          controller.themeMode = !controller.themeMode;
                          // TO DO: 2. Cambia el modo usando changeThemeMode() del controlador
                          controller.changeThemeMode();
                          // TO DO: 3. Guarda el cambio usando saveThemeMode()
                          controller.saveThemeMode();
                        },
                        child: const Text("Cambiar Tema"),
                      ),
                    ),
                  ),
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
