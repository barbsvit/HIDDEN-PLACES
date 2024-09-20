import 'package:flutter/material.dart';
import 'package:hidden_places/contaduvida.dart'; 
import 'package:hidden_places/configuracoes.dart';
import 'package:hidden_places/feed.dart';
import 'package:hidden_places/foto_load.dart';
import 'package:hidden_places/problocal.dart';
import 'package:hidden_places/probsenha.dart';
import 'package:hidden_places/teste.dart';

class FAQApp extends StatelessWidget {
  const FAQApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TelaFaq(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TelaFaq extends StatelessWidget {
  const TelaFaq({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const Teste();
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
      backgroundColor: const Color.fromARGB(255, 39, 39, 39),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Icon(
                    Icons.help_outline,
                    color: Colors.green,
                    size: 40.0,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'FAQ',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Em que podemos ajudar?',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 25,
                ),
              ),
              const SizedBox(height: 20),
              FAQButton('Não consigo logar minha conta', () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContaDuvida()));
              }),
              FAQButton('As fotos não estão carregando', () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => FotoLoad()));
              }),
              FAQButton('Não consigo adicionar localização', () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Problocal()));
              }),
              FAQButton('Como alterar a senha?', () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Probsenha()));
              }),
            ],
          ),
        ),
      ),
    );
  }
}

class FAQButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const FAQButton(this.text, this.onPressed, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          children: [
            const Icon(
              Icons.help_outline,
              color: Colors.green,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.yellow,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
