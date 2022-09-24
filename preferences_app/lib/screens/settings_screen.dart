import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'Settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        drawer: const SideMenu(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ajustes',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              const Divider(),
              SwitchListTile.adaptive(
                value: true,
                onChanged: (value) {},
                title: const Text('Dark mode'),
              ),
              const Divider(),
              RadioListTile<int>(
                  value: 1,
                  groupValue: 1,
                  title: const Text('Masculino'),
                  onChanged: (value) {}),
              const Divider(),
              RadioListTile<int>(
                  value: 2,
                  groupValue: 1,
                  title: const Text('Femenino'),
                  onChanged: (value) {}),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Fernando',
                  decoration: const InputDecoration(
                      labelText: 'Nombre',
                      helperText: 'Nombre del usuario'
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
