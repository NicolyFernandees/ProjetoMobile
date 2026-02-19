import 'package:flutter/material.dart';

class MensagemScreen extends StatefulWidget {
  const MensagemScreen({super.key});

  @override
  State<MensagemScreen> createState() => _MensagemScreenState();
}

class _MensagemScreenState extends State<MensagemScreen> {
  String mensagem = "Feliz Navidad";

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Text("Mensagem")),
        SizedBox(
          width: double.infinity,
          child: FloatingActionButton(
            onPressed: () {
              setState(() {
                mensagem = "Ana macaca albina";
              });
            },
            child: Text("Clique aqui"),
          ),
        ),
      ],
    );
  }
}
