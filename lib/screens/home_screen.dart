

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const miEstilo = TextStyle(fontSize: 20);
    int contador = 0;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('MyApp'),
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const <Widget>[
            Text('Numero de clicks', style: miEstilo,),
            Text('0', style: TextStyle(fontSize: 30),),
          ],
        ),
    ),


    floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    floatingActionButton: FloatingActionButton(

      child: Column(
        children: const [
          Icon(Icons.add ),
          Icon(Icons.remove)
        ],
      ),
      onPressed: () {
        
        print('Hola Mundo');
        contador++;
        },
      ),
    );
  }

}