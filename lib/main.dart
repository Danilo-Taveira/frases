import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "O sucesso é a soma de pequenos esforços repetidos dia após dia.",
    "Só existe um êxito: a capacidade de levar a vida que se quer.",
    "A felicidade não é um destino. É uma viagem.",
    "O segredo do sucesso trata-se da constância do propósito.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Image.asset("images/logo.png"),
          Text(
            _fraseGerada,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 17,
              fontStyle: FontStyle.italic,
              color: Colors.black,
            ),
          ),
          ElevatedButton(
            child: Text(
              "Nova Frase",
              style: TextStyle(
                fontSize: 17,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: _gerarFrase,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green),
            )
           ),
        ]),
      ),
    );
  }
}