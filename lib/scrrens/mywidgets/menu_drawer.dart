import 'package:flutter/material.dart';

import '../login.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    String nome = 'João Moraes';
    void navigateLogin() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Login(),
        ),
      );
    }

    return Drawer(
      backgroundColor: Colors.black.withOpacity(0.6),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(children: [
              const Icon(
                Icons.person,
                color: Colors.white,
                size: 70,
              ),
              Text(
                nome,
                style: const TextStyle(color: Colors.white),
              )
            ]),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: const Text(
              'Configurações e Privacidade',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.question_mark,
              color: Colors.white,
            ),
            title: const Text(
              'Ajuda e Suporte',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.star, color: Colors.white),
            title: const Text(
              'Minhas Estrelas',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          const Divider(
            color: Colors.white,
          ),
          ListTile(
            leading: const Icon(Icons.logout_outlined, color: Colors.white),
            title: const Text(
              'Sair',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              navigateLogin();
            },
          ),
        ],
      ),
    );
  }
}
