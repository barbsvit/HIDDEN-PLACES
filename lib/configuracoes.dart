// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:hidden_places/teste.dart';
import 'package:hidden_places/feed.dart';

// ignore: use_key_in_widget_constructors
class Configuracoes extends StatefulWidget{
  @override
  ConfiguracoesState createState() {
    return ConfiguracoesState();
  }
}
class ConfiguracoesState extends State<Configuracoes>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      drawer: 
      Builder(builder: (context) => 
      Drawer(
          backgroundColor: Color.fromARGB(249, 0, 0, 0),
          child: Column(children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 39, 39, 39),
              ),
              accountName: Text ('Usuario'), 
              accountEmail: Text ('Usuario@gmail.com'),
            ),
             ListTile(
                leading: Icon(Icons.person, color: const Color.fromARGB(255, 233, 255, 32)),
                title: Text('Meu Perfil',
                style: TextStyle(color: const Color.fromARGB(255, 233, 255, 32)),
                ),
                 onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Teste();
                  }));
                }
              ),
              ListTile(
                leading: Icon(Icons.feed, color: const Color.fromARGB(255, 233, 255, 32)),
                title: Text('Principal',
                style: TextStyle(color: const Color.fromARGB(255, 233, 255, 32)),
                ),
                 onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return MeuApp();
                  }));
                }
              ),
               ListTile(
                leading: Icon(Icons.help, color: const Color.fromARGB(255, 233, 255, 32)),
                title: Text('Dúvidas Frequentes',
                style: TextStyle(color: const Color.fromARGB(255, 233, 255, 32)),
                ),
                 onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Teste();
                  }));
                }
              ),
               ListTile(
                leading: Icon(Icons.settings, color: const Color.fromARGB(255, 233, 255, 32)),
                title: Text('Configurações',
                style: TextStyle(color: const Color.fromARGB(255, 233, 255, 32)),
                ),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Configuracoes();
                  }));
                }),
          ],)
        
        ),
      ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context){
                    return Teste();
                  }));
          }, icon: Icon(Icons.person, color:Color.fromARGB(255, 233, 255, 32))),
        ],
        leading: Builder(
          builder: (context)=> IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
          }, 
          icon: Icon(Icons.menu, color: const Color.fromARGB(255, 233, 255, 32))
            ),
          ),
            backgroundColor: Color.fromARGB(255, 0, 0, 0),  
        ),
      body: Center( 
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,

              children:<Widget>[ 
                Padding(padding: EdgeInsets.all(75.0),
                 child: TextField(
                decoration: InputDecoration(
                  hintText: 'Pesquisar...',
                  hintStyle: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                  prefixIcon: Icon(Icons.search, color: Colors.black,),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
                    filled: true,
                  fillColor: Color.fromARGB(255, 233, 255, 32),
              ),
            ),
          ),
                
                Container(
                width: 500.0,
                height: 100.0,
              
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 255, 32),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child:Column(
                 mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(8.0)),
                  Icon( Icons.remove_red_eye_outlined),
                  SizedBox(width: 8.0),
                  Text('Privacidade', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22.0),
                    ),
                  ],
                ),
                SizedBox(width:1.0),
                Padding(padding: EdgeInsets.all(5.0),),
                Text('Seus dados pessoais, e-mail, pessoas que visualizam seus posts',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,)),
              ],

              ),
              ),
              SizedBox(height:20.0),
              Container(
                width: 500.0,
                height: 100.0,
              
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 255, 32),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child:Column(
                 mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(8.0)),
                  Icon( Icons.security),
                  SizedBox(width: 8.0),
                  Text('Segurança', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22.0),
                    ),
                  ],
                ),
                SizedBox(width:1.0),
                Padding(padding: EdgeInsets.all(8.0),),
                Text('Verificação em duas etapas, confirmação de número e senha...',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,)),
                    ],
                  ),
                ),
                SizedBox(height:20.0),
              Container(
                width: 500.0,
                height: 100.0,
              
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 233, 255, 32),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child:Column(
                 mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
               Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(8.0)),
                  Icon( Icons.room_preferences_outlined),
                  SizedBox(width: 8.0),
                  Text('Preferências', style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22.0),
                    ),
                  ],
                ),
                SizedBox(width:1.0),
                Padding(padding: EdgeInsets.all(8.0),),
                Text('Tema, tamanho da fonte, tempo de tela, brilho da tela, redefinir',
                style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,)),
                    ],
                  ),
                ),

              ],
            ),
          ),
  
        );
      }
  }