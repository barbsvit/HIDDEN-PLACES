import 'package:flutter/material.dart';
import 'package:hidden_places/configuracoes.dart';
import 'package:hidden_places/faq.dart';
import 'package:hidden_places/feed.dart';

class TelaPerfil extends StatelessWidget {
  const TelaPerfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const TelaPerfil();
              }));
            },
            icon: const Icon(Icons.person, color: Color.fromARGB(255, 233, 255, 32)),
          ),
        ],
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: const Icon(Icons.menu, color: Color.fromARGB(255, 233, 255, 32)),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(249, 0, 0, 0),
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 39, 39, 39),
              ),
              accountName: const Text('Nome de Usuário'),
              accountEmail: const Text('email@example.com'),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Color.fromARGB(255, 233, 255, 32)),
              title: const Text(
                'Meu Perfil',
                style: TextStyle(color: Color.fromARGB(255, 233, 255, 32)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const TelaPerfil();
                }));
              },
            ),
            ListTile(
              leading: const Icon(Icons.feed, color: Color.fromARGB(255, 233, 255, 32)),
              title: const Text(
                'Principal',
                style: TextStyle(color: Color.fromARGB(255, 233, 255, 32)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MeuApp(),
                  ),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.help, color: Color.fromARGB(255, 233, 255, 32)),
              title: const Text(
                'Dúvidas Frequentes',
                style: TextStyle(color: Color.fromARGB(255, 233, 255, 32)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FAQApp()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Color.fromARGB(255, 233, 255, 32)),
              title: const Text(
                'Configurações',
                style: TextStyle(color: Color.fromARGB(255, 233, 255, 32)),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Configuracoes();
                }));
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.all(24),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.green,
                      child: Icon(Icons.person, size: 50),
                    ),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Text(
                          'Nome de usuário',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 255, 32),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Bio do usuário.',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
