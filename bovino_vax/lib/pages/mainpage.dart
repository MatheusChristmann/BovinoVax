import 'package:bovino_vax/pages/vacina.dart';
import 'package:flutter/material.dart';

import 'animal.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(124,156,124, 1),        
        title: Text(
          'BovinoVax',
          style: TextStyle(
            color: Color.fromRGBO(83, 85, 82, 1),
          ),
        ),
        centerTitle: true,

        actions: <Widget>[          
          PopupMenuButton(
            color: Color.fromRGBO(246, 247, 241, 1),
            icon: Icon(Icons.list_alt, color: Colors.black),
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text('Cadastro Animal'),              
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('Cadastro Vacina'),              
                ),
              ];
            },
            offset: Offset(0, 64),           
            onSelected: (value){
              if (value == 0) {
               Navigator.push(context,MaterialPageRoute(builder: (context) => AnimalPage(),),);
              }
              else if (value == 1) {
                Navigator.push(context,MaterialPageRoute(builder: (context) => VacinaPage(),),);
              }
            },
          )
        ],        
      ),            
      backgroundColor: Color.fromRGBO(235, 230, 210, 1),      
      body: Center(
        child: Container(
          width: 200,  // Largura desejada da imagem
          height: 200, // Altura desejada da imagem
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/animal.png'), // Caminho para a sua imagem
              fit: BoxFit.contain, // Ajusta a imagem para caber no Container
            ),
          ),
        ),
      ),
    );
  }
}
