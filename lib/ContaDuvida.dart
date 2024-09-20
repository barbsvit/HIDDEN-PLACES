import 'package:flutter/material.dart';
import 'package:hidden_places/configuracoes.dart';
import 'package:hidden_places/faq.dart';
import 'package:hidden_places/feed.dart';
import 'package:hidden_places/teste.dart';

class ContaDuvida extends StatelessWidget {
  const ContaDuvida({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Color.fromARGB(255, 233, 255, 32)),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          'Como Logar na Conta',
          style: TextStyle(color: Color.fromARGB(255, 233, 255, 32)),
        ),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(249, 0, 0, 0),
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 39, 39, 39),
              ),
              accountName: Text('Usuario'),
              accountEmail: Text('usuario.email'), 
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
                  return const Teste(); 
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
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MeuApp(); 
                }));
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
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FAQApp(); 
                }));
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
      backgroundColor: const Color.fromARGB(255, 39, 39, 39),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Text(
           'Tente realizar o login com uma conta ja existente no aplicativo.',
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 18,
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
