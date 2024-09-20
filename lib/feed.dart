import 'package:flutter/material.dart';
import 'package:hidden_places/configuracoes.dart';
import 'package:hidden_places/faq.dart';
import 'package:hidden_places/login.dart';
import 'package:hidden_places/perfil.dart';
import 'package:url_launcher/url_launcher.dart'; 
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
void tapa1(){
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
 
   
  Future<void> _launchURL() async {
   final Uri url = Uri.parse('https://maps.app.goo.gl/VVg4mj7YbWbBeeZM9');
   if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
    }}

 
 
 
class MeuApp extends StatefulWidget{
  const MeuApp({super.key});
 @override
  State<MeuApp> createState() => _MeuAppState();
 
}
 
class _MeuAppState extends State<MeuApp> {
 
 
 
 
@override
Widget build(BuildContext context) {
  late Usuario usuario;
  if(ModalRoute.of(context)!.settings.arguments != null) {
    usuario = ModalRoute.of(context)!.settings.arguments as Usuario;
  } else {
    usuario = const Usuario('email') ;
  }
 
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 16, 16),
      drawer:
      Builder(builder: (context) =>
      Drawer(
          backgroundColor: const Color.fromARGB(249, 0, 0, 0),
          child: Column(children: [
             UserAccountsDrawerHeader(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 39, 39, 39),
              ),
              accountName: const Text ('Usuario'),
              accountEmail: Text (usuario.email),
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
                  return TelaPerfil(); 
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
          ],)
       
        ),
      ),
      appBar: AppBar(
         actions: <Widget>[
          IconButton(onPressed:(){
            Navigator.push(context, MaterialPageRoute(builder: (context){
                    // ignore: prefer_const_constructors
                    return TelaPerfil();
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
  margin: const EdgeInsets.all(24),
  width: 600,
  height: 400, 
  padding: const EdgeInsets.fromLTRB(15, 30, 0, 0),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(30),
    color: const Color.fromARGB(255, 0, 0, 0),
  ),
  child: Column(
    children: <Widget>[
      Image.asset(
        'assets/beco_batman.jpg',
        fit: BoxFit.cover,
        width: 350,
        height: 250,
      ),
      const SizedBox(height: 10),
      const Text(
        'Beco do Batman',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 30),
      const Row(
        mainAxisAlignment: MainAxisAlignment.start, 
        children: <Widget>[
          LikeWidget(),
          VerticalDivider(width: 30),
          IconButton(
            onPressed: tapa,
            icon: Icon(Icons.chat_bubble_outline),
            color: Colors.grey,
          ),
          VerticalDivider(width: 30),
          IconButton(
            onPressed: tapa,
            icon: Icon(Icons.autorenew),
            color: Colors.grey,
          ),
          VerticalDivider(width: 30),
          IconButton(
            onPressed: _launchURL,
            icon: Icon(Icons.place),
            color: Color.fromARGB(255, 233, 255, 32),
          ),
        ],
      ),
    ],
  ),
)               
              ]))],)
    );
}
}