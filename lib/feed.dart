import 'package:flutter/material.dart';
import 'package:hidden_places/configuracoes.dart';
import 'package:hidden_places/teste.dart';

class LikeWidget extends StatefulWidget{
  const LikeWidget({super.key});
  
  @override
  State<LikeWidget> createState() => _LikeWidgetState();
}

class _LikeWidgetState extends State<LikeWidget>{

  bool liked = false;

  void toggleButton() {
    setState(() {
      liked = !liked;
    });
  }

  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: toggleButton,
    child:liked
    ? const Icon(
      Icons.favorite,
      color: Colors.red,
      
    )
    : const Icon(Icons.favorite_outline,color: Colors.grey));
  }
}

void tapa(){
  const Placeholder();
}



void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MeuApp(),
    );
  }
}



class MeuApp extends StatelessWidget {
  const MeuApp({super.key});
  


@override
Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      drawer: 
      Builder(builder: (context) => 
      Drawer(
          backgroundColor: const Color.fromARGB(249, 0, 0, 0),
          child: Column(children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 39, 39, 39),
              ),
              accountName: Text ('Usuario'), 
              accountEmail: Text ('Usuario@gmail.com'),
            ),
             ListTile(
                leading: const Icon(Icons.person, color: Color.fromARGB(255, 233, 255, 32)),
                title: const Text('Meu Perfil',
                style: TextStyle(color: Color.fromARGB(255, 233, 255, 32)),
                ),
                 onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const Teste();
                  }));
                }
              ),
              ListTile(
                leading: const Icon(Icons.feed, color: Color.fromARGB(255, 233, 255, 32)),
                title: const Text('Principal',
                style: TextStyle(color: Color.fromARGB(255, 233, 255, 32)),
                ),
                 onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const MeuApp();
                  }));
                }
              ),
               ListTile(
                leading: const Icon(Icons.help, color: Color.fromARGB(255, 233, 255, 32)),
                title: const Text('Dúvidas Frequentes',
                style: TextStyle(color: Color.fromARGB(255, 233, 255, 32)),
                ),
                 onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const Teste();
                  }));
                }
              ),
               ListTile(
                leading: const Icon(Icons.settings, color: Color.fromARGB(255, 233, 255, 32)),
                title: const Text('Configurações',
                style: TextStyle(color: Color.fromARGB(255, 233, 255, 32)),
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
                    // ignore: prefer_const_constructors
                    return Teste();
                  }));
          }, icon: const Icon(Icons.person, color:Color.fromARGB(255, 233, 255, 32))),
        ],
        leading: Builder(
          builder: (context)=> IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
          }, 
          icon: const Icon(Icons.menu, color: Color.fromARGB(255, 233, 255, 32))
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0)
      ),
      body: Column(children: <Widget>[
        Center(child: 
         Column( children: <Widget>[
        Container(
          margin:const EdgeInsets.all(24),
          width: 600,
          height: 150,
          padding: const EdgeInsets.fromLTRB(35, 30, 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 0, 0, 0)
          ),
          child: const Stack(
            children: <Widget>[
            Text(
              style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ut.'),
            Positioned(
              top: 75,
              child: Row(
              children:<Widget>[
                LikeWidget(),
                VerticalDivider(
                  width: 30,
                ),
                IconButton(onPressed: tapa, icon: Icon(Icons.chat_bubble_outline), color: Colors.grey),
                VerticalDivider(
                  width: 30,
                ),
                IconButton(onPressed: tapa, icon: Icon(Icons.autorenew), color: Colors.grey),
                VerticalDivider(
                  width: 350,
                ),
                IconButton(onPressed: tapa, icon: Icon(Icons.more_horiz), color: Colors.grey,)
              ],
            )),
            ],
          )
        ),
            Container(
          margin:const EdgeInsets.all(24),
          width: 600,
          height: 150,
          padding: const EdgeInsets.fromLTRB(35, 30, 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color.fromARGB(255, 0, 0, 0)
          ),
          child: const Stack(
            children: <Widget>[
            Text(
              style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus ut.'),
            Positioned(
              top: 75,
              child: Row(
              children:<Widget>[
                LikeWidget(),
                VerticalDivider(
                  width: 30,
                ),
                IconButton(onPressed: tapa, icon: Icon(Icons.chat_bubble_outline), color: Colors.grey),
                VerticalDivider(
                  width: 30,
                ),
                IconButton(onPressed: tapa, icon: Icon(Icons.autorenew), color: Colors.grey),
                VerticalDivider(
                  width: 30,
                ),
                IconButton(onPressed: tapa, icon: Icon(Icons.place), color: Color.fromARGB(255, 233, 255, 32),),
                VerticalDivider(
                  width: 280,
                ),
                IconButton(onPressed: tapa, icon: Icon(Icons.more_horiz), color: Colors.grey,)
              ],
            )),
            ],
          )
        ),                
              ]))],)
    );
}
}