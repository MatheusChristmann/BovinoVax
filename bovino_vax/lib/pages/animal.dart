import 'package:flutter/material.dart';

class AnimalPage extends StatelessWidget {  
  final TextEditingController numBrincoController = TextEditingController();
  final TextEditingController dataNascimentoController = TextEditingController();
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController obsController = TextEditingController();
  final TextEditingController valorMercadoController = TextEditingController();
  final TextEditingController coloracaoController = TextEditingController();
  final TextEditingController racaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Bovinos'),
        backgroundColor: Color.fromRGBO(124,156,124, 1), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [            
            SizedBox(height: 16.0),

            Container(
              width: 200.0,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                controller: numBrincoController,
                decoration: InputDecoration(
                  labelText: 'Número de Brinco',
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20.0),

            Container(
              width: 200.0,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                controller: dataNascimentoController,
                decoration: InputDecoration(
                  labelText: 'Data de Nascimento',
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 20.0),

            Container(
              width: 200.0,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                controller: pesoController,
                decoration: InputDecoration(
                  labelText: 'Peso',
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 20.0),

            Container(
              width: 200.0,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                controller: obsController,
                decoration: InputDecoration(
                  labelText: 'Observação',
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 20.0),

            Container(
              width: 200.0,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                controller: valorMercadoController,
                decoration: InputDecoration(
                  labelText: 'Valor de Mercado',
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 20.0),

            Container(
              width: 200.0,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                controller: coloracaoController,
                decoration: InputDecoration(
                  labelText: 'Coloração',
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 20.0),

            Container(
              width: 200.0,
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextField(
                controller: racaController,
                decoration: InputDecoration(
                  labelText: 'Raça',
                  border: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 20.0),                

            ElevatedButton(
              onPressed: () {
                String numBrinco = numBrincoController.text;
                print('Teste: $numBrinco');
              },
              child: Text('Salvar Animal'),
            ),
          ],
        ),
      ),
    );
  }
}