import 'package:flutter/material.dart';

class Teste extends StatelessWidget{
  const Teste({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          backgroundColor: const Color.fromARGB(221, 29, 27, 27), 
    appBar: AppBar(
    title: const Text ('Teste'),
    backgroundColor: Colors.black,
    
    ),
    body: Center(
      child: ElevatedButton(child: const Text ('Teste Um'),
      onPressed: (){
        Navigator.pop(context);
      }
      ),
    ),
    ),
  );
  }

}