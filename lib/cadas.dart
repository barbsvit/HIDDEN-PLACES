import 'package:flutter/material.dart';
import 'package:hidden_places/feed.dart';

class CadasPage extends StatelessWidget {
  const CadasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 60,
           left:40,
            right: 40,),
        color: Colors.black,
        child: ListView(
          children: <Widget> [
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
                labelText: "Digite um E-mail",
                labelStyle: TextStyle(
                  color: Color.fromARGB(204, 3, 255, 3),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255),),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Crie uma senha forte",
                labelStyle: TextStyle(
                  color: Color.fromARGB(204, 3, 255, 3),
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 255, 255, 255),),
            ),
            Container(
              height: 40,
              alignment: Alignment.center,
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
                      Text("Criar Conta",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color:Colors.white,
                        fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                    ),
                    onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                    );},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

