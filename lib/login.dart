import 'package:flutter/material.dart';
import 'package:hidden_places/feed.dart';
import 'cadas.dart';
 
class Usuario {
  final String email;
 
  const Usuario (this.email);
}
 
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
 
  @override
  _LoginPageState createState() => _LoginPageState();
}
 
class _LoginPageState extends State<LoginPage> {
  String email_usu = '';
 
  @override
  void initState() {
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 128,
              height: 128,
              child: Image.asset('assets/logo_teste.jpeg'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                  color: Color.fromARGB(204, 3, 255, 3),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              onChanged: (value) {
                setState(() {
                  email_usu = value;
                });
              },
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 250, 250, 250),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Senha",
                labelStyle: TextStyle(
                  color: Color.fromARGB(204, 3, 255, 3),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 250, 250, 250),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color.fromARGB(255, 2, 241, 2),
                    Color.fromARGB(255, 0, 0, 0),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Entrar",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Usuario email = Usuario(email_usu);
 
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MeuApp(),
                      settings: RouteSettings(arguments: email)),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color.fromARGB(255, 0, 0, 0),
                    Color.fromARGB(255, 2, 241, 2),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: TextButton(
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Cadastrar-se",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CadasPage()),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}