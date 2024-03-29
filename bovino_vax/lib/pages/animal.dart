import 'package:flutter/material.dart';

class AnimalPage extends StatefulWidget {
  @override
  _AnimalPageState createState() => _AnimalPageState();
}

class _AnimalPageState extends State<AnimalPage> {
  final TextEditingController numBrincoController = TextEditingController();
  final TextEditingController dataNascimentoController =TextEditingController();
  final TextEditingController pesoController = TextEditingController();
  final TextEditingController obsController = TextEditingController();
  final TextEditingController valorMercadoController = TextEditingController();
  final TextEditingController coloracaoController = TextEditingController();
  final TextEditingController racaController = TextEditingController();

  // Lista de raças para o dropdown
  final List<String> racas = [
    'Angus',
    'Hereford',
    'Holandesa',
    'Guzerá',
    'Nelore'
  ];
  final List<String> coloracao = [
    'Preta',
    'Branca',
    'Vermelha',
    'Marrom',
    'Cinza'
  ];

  // Valor inicial selecionado no dropdown
  String selectedRaca = 'Angus';
  String selectedColoracao = 'Preta';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de Animal'),
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
                        labelText: 'Número de Brinco',
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
                        labelText: 'Data de Nascimento',
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
                        labelText: 'Peso',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Container(
                    width: 150.0,
                    padding: EdgeInsets.all(2.0),
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
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                SizedBox(
                    width: 200,
                    child: DropdownButtonFormField<String>(
                        isExpanded: true,
                        decoration: InputDecoration(
                            label: Text('Coloração'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                            )),
                        value: selectedColoracao,
                        onChanged: (String? value) {
                          setState(() {
                            selectedColoracao = value!;
                          });
                        },
                        items: coloracao
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList())),
                SizedBox(width: 20.0),
                SizedBox(
                    width: 200,
                    child: DropdownButtonFormField<String>(
                        isExpanded: true,
                        decoration: InputDecoration(
                            label: Text('Raça'),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                            )),
                        value: selectedRaca,
                        onChanged: (String? value) {
                          setState(() {
                            selectedRaca = value!;
                          });
                        },
                        items:
                            racas.map<DropdownMenuItem<String>>((String value) {
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
              child: Text('Salvar Animal'),
            )
          ],
        ),
      ),
    );
  }
}
