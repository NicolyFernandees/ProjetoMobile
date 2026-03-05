import 'package:flutter/material.dart';

class CalculadoraScreen extends StatefulWidget {
  const CalculadoraScreen({super.key});

  @override
  State<CalculadoraScreen> createState() => _CalculadoraScreenState();
}

class _CalculadoraScreenState extends State<CalculadoraScreen> {
  TextEditingController txtNumero1 = TextEditingController();
  TextEditingController txtNumero2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            "Calculadora",
            style: TextStyle(
              fontSize: 30,
              color: Colors.grey,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          FloatingActionButton(
            onPressed: () {
              double numero1 = double.parse(txtNumero1.text);
              double numero2 = double.parse(txtNumero2.text);

              double resultado = numero1 + numero2;

            
                showDialog<void>(
                  context: context, // The context of the current widget tree
                  builder: (BuildContext context) {
                    // The builder returns the dialog widget
                    return AlertDialog(
                      title: Text("Resultado"),
                      content: Text(resultado.toString()),
                      actions: <Widget>[
                        TextButton(
                          child: Text("OK"),
                          onPressed: () {
                            Navigator.of(context).pop(); // Dismiss the dialog
                          },
                        ),
                      ],
                    );
                  },
                );
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.remove)),
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.close)),
          FloatingActionButton(
            onPressed: () {},
            child: Text("/", style: TextStyle(fontSize: 24)),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              controller: txtNumero1,
              decoration: InputDecoration(
                labelText: "Número 1:",
                labelStyle: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: txtNumero2,
              decoration: InputDecoration(
                labelText: "Número 2:",
                labelStyle: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
