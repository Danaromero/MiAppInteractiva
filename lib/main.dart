import 'package:flutter/material.dart';

void main() => runApp(danaApp());

class danaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mi Aplicacion Interactiva",
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: PaginaInicial(),
    ); //Fin Material
  } //Fin Widget
} //Fin de Fila Columna

class PaginaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Aplicacion Interactiva de Dana Romero'),
          ),//Fin AppBar
          body: Card(
          child: Center(
	        child: Column(
        	children: <Widget>[
         	Image.asset("images/car.png"),

         Padding(//Inicio Primer Padding 
            padding: const EdgeInsets.all(20),
            child: TextFormField(//TextFormField
              validator: (String value) {//Inicio Validator
                if (value.isEmpty) {//IF
                  return 'Nombre usuario Vacio';
                } else if (value.length < 3) {//ELSE IF
                  return 'El nombre de usuario debe tener al menos 3 caracteres';
                }
                return null;
              },//Fin Validator
              decoration: InputDecoration(//Decorar
                labelText: 'Nombre Usuario',
                icon: Icon(Icons.account_circle),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),//Fin decoration
            ),//Fin TextFormField
          ),//Fin Primer Padding

        Padding(//Inicio Primer Padding 
            padding: const EdgeInsets.all(20),
            child: TextFormField(//TextFormField
              validator: (String value) {//Inicio Validator
                if (value.isEmpty) {//IF
                  return 'Nombre usuario Vacio';
                } else if (value.length < 3) {//ELSE IF
                  return 'El nombre de usuario debe tener al menos 3 caracteres';
                }
                return null;
              },//Fin Validator
              decoration: InputDecoration(//Decorar
                labelText: 'Nombre Usuario',
                icon: Icon(Icons.account_circle),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),//Fin decoration
            ),//Fin TextFormField
          ),//Fin Primer Padding

           Padding(//Inicio Primer Padding 
            padding: const EdgeInsets.all(20),
            child: TextFormField(//TextFormField
              validator: (String value) {//Inicio Validator
                if (value.isEmpty) {//IF
                  return 'Nombre usuario Vacio';
                } else if (value.length < 3) {//ELSE IF
                  return 'El nombre de usuario debe tener al menos 3 caracteres';
                }
                return null;
              },//Fin Validator
              decoration: InputDecoration(//Decorar
                labelText: 'Nombre Usuario',
                icon: Icon(Icons.account_circle),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),//Fin decoration
            ),//Fin TextFormField
          ),//Fin Primer Padding

 


  	    ],//Fin Widget
	    ),//Fin Columna
     ),//Fin Center
    ),//Fin Body         
   );//Fin Scaffold
  }//Fin Widget
}//Fin PaginaInicial
