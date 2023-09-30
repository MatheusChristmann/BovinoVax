import 'package:flutter/material.dart';

class VacinaPage extends StatefulWidget {
  @override
  _VacinaPageState createState() => _VacinaPageState();
}

class _VacinaPageState extends State<VacinaPage> {
  final TextEditingController numBrincoController = TextEditingController();
  final TextEditingController dataNascimentoController =
      TextEditingController();
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController obsController = TextEditingController();
  final TextEditingController valorMercadoController = TextEditingController();
  final TextEditingController coloracaoController = TextEditingController();
  final TextEditingController racaController = TextEditingController();

  final List<String> fabricante = [
    'Fabricante 01',
    'Fabricante 02',
    'Fabricante 03',
    'Fabricante 04',
    'Fabricante 05'
  ];

  String selectedFabricante = 'Fabricante 01';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Vacinas'),
        backgroundColor: Color.fromRGBO(124, 156, 124, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 12.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 150.0, // Largura desejada para o camp
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextField(
                      controller: numBrincoController,
                      decoration: InputDecoration(
                        labelText: 'Código',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Container(
                    width: 200.0,
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextField(
                      controller: dataNascimentoController,
                      decoration: InputDecoration(
                        labelText: 'Descrição',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: 150.0,
                    padding: EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextField(
                      controller: pesoController,
                      decoration: InputDecoration(
                        labelText: 'Estoque',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                SizedBox(
                    width: 200,
                    child: DropdownButtonFormField<String>(
                        isExpanded: true,
                        decoration: InputDecoration(
                            label: Text('Fabricante'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                            )),
                        value: selectedFabricante,
                        onChanged: (String? value) {
                          setState(() {
                            selectedFabricante = value!;
                          });
                        },
                        items: fabricante
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList())),
              ],
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: TextField(
                  controller: valorMercadoController,
                  decoration: InputDecoration(
                    labelText: 'Modo de Administração',
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(2.0),
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
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Color.fromRGBO(124, 156, 124, 1), // Cor de fundo
                onPrimary: Colors.white, // Cor do texto
                padding: EdgeInsets.symmetric(
                    vertical: 20.0,
                    horizontal: 40.0), // Preenchimento vertical e horizontal
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Borda arredondada
                ),
                maximumSize: Size(double.infinity, 50.0), // Largura máxima
              ),
              child: Text('Salvar Vacina'),
            )
          ],
        ),
      ),
    );
  }
}
