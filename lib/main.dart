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


class PaginaInicial extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<PaginaInicial> {
  bool _enabled = true;
  int value;
  List<DropdownMenuItem<int>> items = [
    DropdownMenuItem(
      value: 5,
      child: Text('asdf'),
    ),
    DropdownMenuItem(
      value: 27,
      child: Text('qwert'),
    ),
    DropdownMenuItem(
      value: 31,
      child: Text('yxcv'),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownButton problem'),
      ),
      body: Center(
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

          Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(width: 20),
                new Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Name'),
                    validator: (value) {
                      return value.isEmpty ? 'Empty name.' : '';
                    },
                  ),
                ),
           DropdownButton(
              items: items,
              hint: Text("Please choose a location"),
              onChanged: _enabled
                  ? (v) => setState(() {
                        value = v;
                      })
                  : null,
              value: value,
            ),//Fin DropdownButton

        ],//Fin Widget []
      ), //Fin del primer Row

     Row(
       mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
      RaisedButton(
          color: Colors.greenAccent,
          onPressed: () => print("Button Pressed"),
          child: new Text("Press here"),
          splashColor: Colors.red[200],
         animationDuration: Duration(seconds: 10),
         padding: EdgeInsets.all(20.0),
         colorBrightness: Brightness.light,
         
                ), //Fin RaisedButton   


       RaisedButton(
          color: Colors.greenAccent,
          onPressed: () => print("Button Pressed"),
          child: new Text("Press here"),
          splashColor: Colors.red[200],
         animationDuration: Duration(seconds: 10),
         padding: EdgeInsets.all(20.0),
         colorBrightness: Brightness.light,
                ), //Fin RaisedButton     


                ],//Fin Widget
              ), //Fin Row 2

          ],
        ),
      ),
    );
  }
}
