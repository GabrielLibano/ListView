import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ListaPage(),
    );
  }
}

class ListaPage extends StatelessWidget {
  List<Contato> contatos = [
    Contato(email: 'gabriel@hotmail.com',nome: 'Gabriel Corinthians'),
    Contato(email: 'isabella@hotmail.com',nome: 'Isabella Corinthians'),
    Contato(email: 'analucia@hotmail.com',nome: 'Ana Corinthians'),
    Contato(email: 'wilson@hotmail.com',nome: 'Wilson Palmeiras'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.builder(
        itemCount: contatos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(contatos[index].nome[1]),
            ),
            title: Text(contatos[index].nome),
            subtitle: Text(contatos[index].email),
          );
        },
      ),
    );
  }
}

class Contato {
  final String nome;
  final String email;
  const Contato({required this.nome, required this.email});
}